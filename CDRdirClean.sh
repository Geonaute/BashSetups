#!/usr/bin/bash
clear
#global variables
user=$(whoami)
break="================================================"
echo
rm ouput.csv
echo $user
echo
echo "Starting cleanup..."
echo 
echo break
sleep2
#rm cmr*
echo 
echo "All CMRs cleaned out"
echo 
python CombineCSV.py
echo
echo "Complete!"
echo 
echo -n "Type Month of the records for archive: "
read archiveName
echo $archiveName
tar cvzf $archiveName.tar.gz cdr*
mv $archiveName.tar.gz Archive/