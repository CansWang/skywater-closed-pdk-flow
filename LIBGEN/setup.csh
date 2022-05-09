#!/usr/bin/csh

# Define the PDK home

setenv PDK_HOME /skywater/V2.1.302/
setenv MGC_CALIBRE_CUSTOMIZATION_FILE $PDK_HOME/PV/Calibre/set_calibre_custom_switches


module load base/1.0
module load ic/6.18.020 
module load liberate/19.20.100
module load spectre/20.10.298
