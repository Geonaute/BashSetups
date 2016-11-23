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
rm cmr*
echo 
echo "All CMRs cleaned out"
echo 
python CombineCSV.py
echo
echo "Complete!"
echo 
#echo -n "Type Month of the records for archive: "
#read archiveName
DYEAR="$(date | cut -d " " -f6)"
DMONTH="$(date | cut -d " " -f2)"
DDAY="$(date | cut -d " " -f3)"
archiveName=${DMONTH}${DYEAR}
echo
echo $archiveName
tar cvzf $archiveName.raw.tar.gz cdr*
tar cvzf $archiveName.output.tar.gz output.csv
mv $archiveName.raw.tar.gz Archive/RAW/
mv $archiveName.output.tar.gz Archive/
echo "MOVED"
echo
#rm cdr*
python PyCDR.py output.csv $archiveName.helpdesk
echo "Report Created"
mv $archiveName.helpdesk.xlsx Reports/
echo "Report backed up"