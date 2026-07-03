
vinayak@LAPTOP-45U3MP42:~/BITS-Graded-Assignment/Q3-Link-Analysis$ ./run_q3.sh
Question 3 - File System and Link Analysis

Command: ls -li original.txt hardlink.txt symlink.txt
91735 -rw-r--r-- 2 vinayak vinayak 20 Jul  3 18:05 hardlink.txt
91735 -rw-r--r-- 2 vinayak vinayak 20 Jul  3 18:05 original.txt
91736 lrwxrwxrwx 1 vinayak vinayak 12 Jul  3 18:05 symlink.txt -> original.txt
Explanation: Shows inode numbers of the files.

Command: stat original.txt hardlink.txt symlink.txt
  File: original.txt
  Size: 20              Blocks: 8          IO Block: 4096   regular file
Device: 8,48    Inode: 91735       Links: 2
Access: (0644/-rw-r--r--)  Uid: ( 1000/ vinayak)   Gid: ( 1000/ vinayak)
Access: 2026-07-03 18:05:29.074955358 +0000
Modify: 2026-07-03 18:05:29.074955358 +0000
Change: 2026-07-03 18:05:29.078837034 +0000
 Birth: 2026-07-03 18:05:29.074955358 +0000
  File: hardlink.txt
  Size: 20              Blocks: 8          IO Block: 4096   regular file
Device: 8,48    Inode: 91735       Links: 2
Access: (0644/-rw-r--r--)  Uid: ( 1000/ vinayak)   Gid: ( 1000/ vinayak)
Access: 2026-07-03 18:05:29.074955358 +0000
Modify: 2026-07-03 18:05:29.074955358 +0000
Change: 2026-07-03 18:05:29.078837034 +0000
 Birth: 2026-07-03 18:05:29.074955358 +0000
  File: symlink.txt -> original.txt
  Size: 12              Blocks: 0          IO Block: 4096   symbolic link
Device: 8,48    Inode: 91736       Links: 1
Access: (0777/lrwxrwxrwx)  Uid: ( 1000/ vinayak)   Gid: ( 1000/ vinayak)
Access: 2026-07-03 18:05:29.082718710 +0000
Modify: 2026-07-03 18:05:29.078837034 +0000
Change: 2026-07-03 18:05:29.078837034 +0000
 Birth: 2026-07-03 18:05:29.078837034 +0000
Explanation: Displays file metadata.

Command: rm original.txt
Explanation: Deleted the original file.

Command: ls -li hardlink.txt symlink.txt
91735 -rw-r--r-- 1 vinayak vinayak 20 Jul  3 18:05 hardlink.txt
91736 lrwxrwxrwx 1 vinayak vinayak 12 Jul  3 18:05 symlink.txt -> original.txt
Explanation: Hard link still works while symbolic link becomes broken.

Command: cat hardlink.txt
Linux Link Analysis
Explanation: Hard link still contains the file data.

Command: cat symlink.txt
Broken symbolic link
Explanation: Symbolic link no longer points to a valid file.

Summary:
- Hard link shares the same inode as the original file.
- Symbolic link stores only the file path.
- Deleting the original file does not affect the hard link.
- The symbolic link becomes broken after deletion.

Link_Analysis_Report.txt created successfully.
