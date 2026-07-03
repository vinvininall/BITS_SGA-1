REPORT="Project_Workspace_Report.txt"

mkdir -p ProjectWorkspace/{docs,src,logs}

{
echo "Question 2 - Secure Project Workspace Setup"
echo

echo "Command: umask"
umask
echo "Explanation: Shows the default umask value."
echo

echo "Command: ls -ld ProjectWorkspace/docs ProjectWorkspace/src ProjectWorkspace/logs"
ls -ld ProjectWorkspace/docs ProjectWorkspace/src ProjectWorkspace/logs
echo "Explanation: Displays the default permissions of the folders."
echo

chmod 750 ProjectWorkspace/docs
chmod 770 ProjectWorkspace/src
chmod 700 ProjectWorkspace/logs

echo "Command: chmod 750 docs"
echo "Command: chmod 770 src"
echo "Command: chmod 700 logs"
echo "Explanation: Changed permissions for each folder."
echo

echo "Command: ls -ld ProjectWorkspace/docs ProjectWorkspace/src ProjectWorkspace/logs"
ls -ld ProjectWorkspace/docs ProjectWorkspace/src ProjectWorkspace/logs
echo "Explanation: Shows the updated permissions."
echo

echo "Command: ls -l ProjectWorkspace"
ls -l ProjectWorkspace
echo "Explanation: Displays ownership details."
echo

echo "Permission Summary:"
echo "- docs (750): Owner has full access, group can read."
echo "- src (770): Owner and group have full access."
echo "- logs (700): Only the owner can access."
echo

} > "$REPORT"

cat "$REPORT"

echo
echo "Project_Workspace_Report.txt created successfully."
