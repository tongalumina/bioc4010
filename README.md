# BIOC-4010 Resources

## Update in 2022W
Due to an unforseen change in the infrastructure at ITS, the PyMOL in the
Windows 10 VM no longer works. Much time was spent trouble shooting in vain. To
work around the technical issue, we are switching to a Linux Mint VM at the
Science Resource Centre in the Essex Hall (EH 182).

New scripts are added to adapt to the new VM. Old scripts are kept for now.

The github `bioc4010` repository has been cloned, after you login the Linux
VM, type
```
cd bioc4010
git pull
```
to enter the directory to see the files and pull changes made to the
repository.

If you have made changes to downloaded files, and have trouble pulling updates
from github. Run the following command to put away these changes before you
pull for the updates.
```
git stash
```

## Information for 2021W class
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
following commands that does not start with hash #:

```
git clone https://github.com/tongalumina/bioc4010.git
cd bioc4010
# this following does not seem to be neccessary
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
# chmod u+x setup.sh
./setup.sh
```
