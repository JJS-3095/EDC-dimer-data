# EDC-dimer-data

This repository contains the datasets, parameter files, and workflows used in the study:  
**"Dimerization-Driven Quantitative Modeling of Endocrine Disruption via Sex Hormone Receptors: Divergent Predictions for Estrogen Receptor Alpha and Androgen Receptor"**

The repository is organized into three main sections: experimental data, molecular docking, and molecular dynamics simulations, ensuring transparency and reproducibility.

---

## Repository Structure

- **Experimental Data/**
  - `PDB_structures_320.xlsx` – All ERα/AR monomer and homodimer structures collected from the PDB database
  - `Interface_HBond_residues.xlsx` – Amino acid residues contributing to dimer interface hydrogen bonds
  - `BindingEnergy_KeyResidues.xlsx` – Key residues contributing to binding energy
  - `coregulator_HBond_occupancy_diff.xlsx` – Differences in coregulator hydrogen bond occupancy
  - `BindingEnergy_vs_EC50.xlsx` – Binding energy vs. literature EC50 values
  - `BindingEnergy_vs_ER_AR_effects.xlsx` – Binding energy vs. experimental estrogenic/androgenic effects

- **Molecular Docking/**
  - `hTRa_conf-vs-template.txt` – Example docking configuration template
  - `vina_vs-sed-template.sh` – Shell script for batch docking with AutoDock Vina

- **Molecular Dynamics Simulation/**
  - `em.mdp`, `mini.mdp`, `nvt.mdp`, `npt.mdp`, `md.mdp`, `pbsa.mdp` – GROMACS parameter files
  - `mmpbsa.sh` – MM/PBSA analysis script
  - `MmPbSaStat.py`, `MmPbSaDecomp.py` – Python scripts for free energy analysis
  - `vdwraadii.dat` – Parameter file
  - `gromacs code.out` – Example output log
  - `mdrun.lsf` – Job submission script

- **Molecular Docking and Molecular Dynamics Simulation Workflow.docx**  
  Step-by-step workflow description for molecular docking and molecular dynamics simulations.

---

## License

This repository is released under the **CC-BY-4.0 License**, which allows reuse with attribution.
