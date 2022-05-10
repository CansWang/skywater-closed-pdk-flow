## Geting Started
To load the environment,
```
tcsh
source setup.csh
```
If no error message pops up, you are all set.

## Launching Virtuoso
(Only launch candence under ./CDS folder)
```
virtuoso &
```
To perform any simulation, please use the `sky130.lib.scs` model file under `./CDS` folder. It organizes three corners (**tt/ff/ss**), feel free to coustomize this file if you  want more corner varities or you want to perform monte carlo simulations.

## Inverter example

There is an inverter example in `./test`, it is laready included in virtuoso library `test`.




