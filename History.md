# History of the Dry Lab environment

Since I start to teach BIOC4010 course in 2019, I have tried a few different
solutions:

In 2019, I used a Linux server in my office for students to access
remotely. It was difficult to have all students access the GUI software, such
as `dotter`.

In 2020, I tried Linux on a USB, there were two issues: persistence (storing
data on the USB), and students' report submission, and it was then abandoned.
I then built the Linux Virtual Machine that resides in the Windows 10 system
at the Science Resource Centre. The tutorial material had its flaws, but
served the purpose. The course was cut short by the pandemic.

In 2021 during the COVID-19 pandemic, I have to build a Windows Virtual
Machine that is supported by the ITS for the teaching, and I started to use
Github to distribute the codes and files.

However, due to an upgrade of the UWindsor ITS infrastructure in late 2021, some
programs, esp. the PyMOL (a native Windows app) in the Windows 10 virtual
machine(VM) used in previous 2021W session no longer works. Much time was spent
trouble-shooting with ITS in vain. To work around the technical issue, we switch back
to a Linux Mint VM that was first built for the 2020W session. The VM is
installed on all desktops at the Science Resource Centre in the Essex Hall (EH
182-1) with the help of Joe Lichaa. The VM is 8G in size and is available from
the instructor as a course material and be installed in students' own laptops
if neccessary.

The VM was built for Oracle [VirtualBox verion 6.1](https://www.virtualbox.org/wiki/Download_Old_Builds_6_1), and is known to cause
problems for Oracle VirtualBox version 6.3. It has NOT been tested on
VirtualBox version 7.0 or above.

Scripts and README files are updated to fit the Linux VM. Some old scripts are
kept temporarily, and will be eventually removed.
