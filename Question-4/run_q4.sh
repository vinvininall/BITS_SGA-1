

REPORT="IO_Investigation_Report.txt"

echo "Sample log file" > sample.txt

{
echo "Question 4 - File Access and I/O Investigation"
echo

echo "Command: lsof sample.txt"
lsof sample.txt 2>/dev/null || echo "No open file found."
echo "Explanation: Checks if the file is currently open."
echo

echo "Command: ulimit -a"
ulimit -a
echo "Explanation: Displays system resource limits."
echo

echo "Command: echo Hello > output.txt"
echo "Hello" > output.txt
cat output.txt
echo "Explanation: Redirects output to a file."
echo

echo "Command: ls invalidfile 2> error.txt"
ls invalidfile 2> error.txt
cat error.txt
echo "Explanation: Redirects error messages to a file."
echo

echo "Command: ls -l /proc/$$/fd"
ls -l /proc/$$/fd
echo "Explanation: Shows the file descriptors of the current shell."
echo

echo "Summary:"
echo "- Output redirection uses >."
echo "- Error redirection uses 2>."
echo "- Linux manages file access using file descriptors."

} > "$REPORT"

cat "$REPORT"

echo
echo "IO_Investigation_Report.txt created successfully."
