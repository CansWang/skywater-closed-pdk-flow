## Getting Started
To load environment,
```
tcsh
source setup.csh
```


## Folder structure
```
**LIBGEN**
  |-- NETLIST        // Contains design netlist and simulation model, put your design here
  |-- LIBRARY        // Generated timing model file
  |-- TEMPLATE       // Liberty characterization template, put template here
  |-- LDB            // Binary version of liberty file
```

## Quick Run Command

```
liberate char.tcl |& tee char.log
```
This command will characterize the cell based on the setting described in `char.tcl`.


