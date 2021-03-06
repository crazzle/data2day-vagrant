Vagrant Infrastructure Repository
============

This project contains all scripts to setup a data streaming infrastructure with kafka, apache spark
and apache toree using jupyter notebook.
Vagrant is used to provision the two VMs (Kafka Instance, Spark + Toree + Jupyter)

The folder "notebooks" contains pre-written Jupyter Notebooks.

The "scripts" folder contains all needed bash scripts to bootstrap the provisioning
process to install and run kafka, spark and spin up jupyter notebook server.


Run Kafka
-----------

```bash
vagrant up kafka
```

Run Spark + Jupyter
--------------

```bash
vagrant up datascience
```

Type "10.100.198.201:8888" in your Browser to open the Jupyter Notebook

As an end-2-end example this repo can be used together with PyPoSim 
