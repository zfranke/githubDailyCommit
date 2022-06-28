#!/bin/bash
# A bash cronjob to change the fileChange.txt file to the current date and time. Then commit the changes to the repository.
#
# Usage:
#   scriptCommit.sh
#


# Change the fileChange.txt file to the current date and time.
echo "`date +%Y-%m-%d-%H-%M-%S`" > fileChange.txt


# Commit the changes to the repository.
git add . >> logs.txt
git commit -m "`date +%Y-%m-%d-%H-%M-%S`" >> logs.txt
git push origin main


# Exit the script.
exit 0

