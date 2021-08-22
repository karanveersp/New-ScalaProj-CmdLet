# New-ScalaProj CmdLet

This is a powershell cmdlet which can be used to quickly create new
scala projects with scalafmt, and scalatest.

ScalaVersion = 2.13.6

To install, clone this project directory to the modules folder.
```
cd ~/Documents/PowerShell/Modules
git clone https://github.com/karanveersp/New-ScalaProj-CmdLet
```

Add the following to your `~\Documents\PowerShell\Microsoft.PowerShell_profile.ps1`
This will load the module on powershell startup.
```ps1
Import-Module new-scalaproj
```

Create a new scala project, enter it and begin coding!
```
New-ScalaProj MyProject
cd MyProject
code . -r
```

