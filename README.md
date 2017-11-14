Windows auto Proof-of-Concept
=============================

Automated unattended Windows installation and preparation for Ansible control.

## Prerequisites / Used tools
Since it is yet PoC, I've tested it on my Mac only:
* OSX High Sierra (10.13.1)
* VirtualBox (5.1.30)
* Windows ISO image (download trial from MS site)
* Ansible (2.3.2) with Python (2.7.14)
* `pywinrm` module (`$ sudo python2 -m pip install pywinrm`)
* `mkisofs` (3.01)

## Config
Set proper Windows ISO file name for `WIN_ISO` variable in the `bin/env` file.

## Build and run virtual machine
`$ bin/run` - **Warning** That will automatically remove machine with the same name if exists!
<br/>Wait till the final boot (you'll see ready-to-use Windows desktop in VM).

## Test ansible can connect to it
`$ bin/ping` - That will gather and show Ansible facts from that machine.

## References / Thanks to
* http://blog.oddbit.com/2014/11/15/creating-a-windows-image-for-openstack
* https://www.microsoft.com/en-us/evalcenter/evaluate-windows-10-enterprise
* http://www.intowindows.com/generate-and-download-unattend-xml-windows-file-online
* https://github.com/ansible/ansible/blob/devel/examples/scripts/ConfigureRemotingForAnsible.ps1
* http://docs.ansible.com/ansible/latest/intro_windows.html
