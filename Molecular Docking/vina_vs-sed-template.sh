#!/bin/bash

LIG=chem            #ligand file input path
array_name=(BPA)

mkdir ligand_out         #ligand file output path
mkdir log_out            #log file output path
OUT_PATH=ligand_out
LOG_PATH=log_out
touch ${OUT_PATH}/VSout.pdbqt      #origional output ligand file
touch ${LOG_PATH}/VSlog.log        #origional output log file
touch VScreen.score                #binding affinity will be write in it
echo " name      ID      affinity      dist from best mode" >> VScreen.score
myvar=0
while [ $myvar -le 0 ]
do
		filename=${array_name[${myvar}]}
		echo "Ligand ${filename} is being docked..."
		vina --config hTRa_conf-vs.txt --ligand ${LIG}/${filename}.pdbqt --out ${OUT_PATH}/${filename}d.pdbqt --log ${LOG_PATH}/${filename}d.log      #run vina
		echo "Ligand ${filename} docking complete."
		cat ${OUT_PATH}/VSout.pdbqt ${OUT_PATH}/${filename}d.pdbqt > Vscreen.pdbqt           #cat output ligand file
		cat ${LOG_PATH}/VSlog.log ${LOG_PATH}/${filename}d.log > Vscreen.log                 #cat output log file
		cp Vscreen.pdbqt ${OUT_PATH}/VSout.pdbqt
		cp Vscreen.log ${LOG_PATH}/VSlog.log
		lig_name=$(sed -n 's/REMARK  Name = / /p' ${LIG}/${filename}.pdbqt)
		result_val=$(sed -n 's/   1     / /p' $LOG_PATH/${filename}d.log)
		sed -i "$ a\ ${filename}     ${lig_name} ${result_val}" VScreen.score
		myvar=$(( $myvar + 1 ))
done
echo "Vina dock for ${LIG} done"
