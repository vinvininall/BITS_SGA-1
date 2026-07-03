#!/bin/bash

REPORT="Environment_Report.txt"

{
echo "Question 1 - Linux Environment Verification"
echo

echo "Command: whoami"
whoami
echo "Observation: Shows my username."
echo

echo "Command: id"
id
echo "Observation: Displays my user ID and groups."
echo

echo "Command: groups"
groups
echo "Observation: Lists the groups I belong to."
echo

echo "Command: echo \$SHELL"
echo $SHELL
echo "Observation: Shows the shell I am using."
echo

echo "Command: pwd"
pwd
echo "Observation: Displays the current working directory."
echo

echo "Command: ls -la"
ls -la
echo "Observation: Lists files and folders in this directory."
echo

echo "Command: ping -c 4 google.com"
ping -c 4 google.com
echo "Observation: Confirms internet connectivity."

} > "$REPORT"

cat "$REPORT"

echo
echo "Report created successfully."
