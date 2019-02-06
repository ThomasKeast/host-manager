# Windows 10 host-manager
Light, simple Windows 10 PowerShell hosts file manager.

You will typically need write permissions to this file if you are a standard user.

Standard path: `C:\Windows\System32\drivers\etc`

# Usage

Devoping a website? Need to connect to an IP address?

The Windows 10 host file manage allows you to add an IP address along with a URL to add to the hosts file.

This small, light tool will ask you if you want to run a live window, where a private incogneto Google Chrome browser will start with the URL you are tying to visit.

Once you are done testing, debugging, devloping, simply press the Enter key on the PowerShell script to exit. 

The script will go off and comment out the adjustment it made all for you.

# Installation

Clone the GitHub project and run it with PowerShell.

It will ask you for:
- The IP address
- Domain name

# Dev Notes / Plans

During pushes for host-manager, I will look to add the following features into the program.

- Add arguments to backup the hosts file to a specific path `host-manager.ps1 -backup C:\directory\example\`
- Add selection window to pick between Chrome, Firefox, Internet Explorer, Edge and other browsers.
- Add comments to code
