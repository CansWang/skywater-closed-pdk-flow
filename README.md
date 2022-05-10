# skywater-closed-pdk-flow

## Introduction

This is an example flow on the closed source skywater 130 PDK. It covers basic **cadence setup, simulation, layout (GDS/LEF Stream out) and verfications (Calibre DRC/LVS/PEX)**. 
It also gives an example on how to generate customized Liberty timing model using Cadence Liberate.

This setup is only for users who signed NDA with skywater, and limited to use on only caddy18 cluster.


## Important Usage Infos

* The closed source PDK is under `/skywater/V2.1.302/`

* Never write anything in **`/skywater`**

* Before you source any setup file make sure you are under `tcsh`

* `./CDS` folder is for running Cadence Virtuoso, it has its own `setup.csh`, it is not compatible with the `setup.csh` under `./LIBGEN` because they load different verison of `Spectre` simulator, loading them in the same terminal will cause version conflicts.

* `./LIBGEN` folder is for running Cadence Liberate. Make sure to load `setup.csh` in a new terminal.

