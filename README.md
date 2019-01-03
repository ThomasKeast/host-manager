# Windows 10 host-manager
PowerShell hosts file manager for Windows Operating systems that have PowerShell operational.

# Usage

Clone the GitHub project and run it with PowerShell.

It will ask you for:
- The IP address
- Domain name

After supplying the information, it will go and add that new host file line into your Windows hosts file and offer to run a testing window.

The testing window will boot an incognito Google Chrome window along with the URL you wish to visit.

After you're done, press 'Enter' on the PowerShell session and it will remove and then re-add the latest host file entry commented out for later use.

# Dev Notes / Plans

During pushes for host-manager, I will look to add the following features into the program.

- Add arguments to backup the hosts file to a specific path `host-manager.ps1 -backup C:\directory\example\`
- Add selection window to pick between Chrome, Firefox, Internet Explorer, Edge and other browsers.
