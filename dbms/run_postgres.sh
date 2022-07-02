#! /usr/bin/env bash
echo "You are in $(pwd)"
if [[! -f 'item.csv' ]]  
then 
printf "go to the directory"
exit 1
else 
sudo -u postgres /usr/bin/psql -c "create database assignment2;" postgres
sudo -u postgres /usr/bin/psql -f './create.sql' assignment2
sudo -u postgres /usr/bin/psql -f './loader.sql' assignment2
fi
echo "Database is populated and Ready to use!!"