# BIOC-4010 Resources
This repository includes codes and files for the dry lab sessions of BIOC-4010,
2021W semester at the University of Windsor, Canada. These codes are tailored
for a Windows 10 Virtual Machine (VM). Keep in mind that once you reboot the
VM, all the changes you made are lost and you'll have to set them up again.

Files are organized according to the tutorial session, each folder has a
`README.md` file that provides session-specific instructions when neccessary.
Please visit the corresponding folder before you start using the data in the
tutorial session.

The content shall be used in companion with the slides file and the assignment
provided to the students.

To download the files, start the Ubuntu terminal in the VM, and run the
following commands:

```
git clone https://github.com/tongalumina/bioc4010.git
cd bioc4010
# chmod u+x setup.sh
./setup.sh
```

If you have used the above command already in a previous session, and hasn't
log out the VM, then run the following commands in Ubuntu terminal to update
the data. You may still want to run the `setup.sh` script to update the system
in case there are new bug fixes.
```
cd ~/bioc4010
git pull
chmod u+x setup.sh
./setup.sh
```

If you have made changes to downloaded files, and have trouble pulling updates
from github. Run the following command to put away these changes before you
pull the updates.
```
git stash
```
