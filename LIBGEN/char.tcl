# Liberate Example Tcl File 

# Set the run directory.  Here we use PWD, but in a distributed 
# environment, it is recommended to directly specify the full path 
# instead of using "PWD"
set rundir $env(PWD) 

# Create the directories Liberate will write to.
exec mkdir -p ${rundir}/LDB
exec mkdir -p ${rundir}/LIBRARY
exec mkdir -p ${rundir}/DATASHEET

### Define temperature and default voltage ###
set_operating_condition -voltage 1.8 -temp 125

###Set DSPF to use
set_var switch_cell_internal_net_name "use_dspf_star_net"
set_var parse_ignore_duplicate_subckt 1
set_var extsim_cmd_option "+aps"
set_var extsim_cmd "spectre"
set_var extsim_deck_header "simulator lang=spice"

## Load template information for each cell ##
source ${rundir}/TEMPLATE/template_example.tcl

## Load Spice models and subckts ##
set spicefiles $rundir/NETLIST/sky130.lib.scs
foreach cell $cells {
    lappend spicefiles ${rundir}/NETLIST/${cell}.scs
}

read_spice -format spectre  $spicefiles

## Characterize the library for NLDM (default), CCS and ECSM timing.
char_library -extsim spectre -ccs -ecsm -cells ${cells} 

## Save characterization database for post-processing ##
write_ldb ${rundir}/LDB/custom.ldb

## Generate a .lib with ccs, ecsm ###
write_library -overwrite -ccs  ${rundir}/LIBRARY/custom_ccs.lib
write_library -overwrite -ecsm ${rundir}/LIBRARY/custom_ecsm.lib

## Generate ascii datatsheet ###
write_datasheet -format text ${rundir}/DATASHEET/example
