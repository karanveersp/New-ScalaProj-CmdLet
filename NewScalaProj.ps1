function New-ScalaProj {
	<#
    .SYNOPSIS
        Create a new scala project from a github skeleton project.

    .DESCRIPTION
        Create a new scala project directory with scalatest, and scalafmt
		with the given project name in the current directory.
		

    .EXAMPLE
        New-ScalaProj ProjectName

    .NOTES
		Git must be installed prior to running this cmdlet.
		The skeleton project is located at - https://github.com/karanveersp/skeleton
    #>
	[CmdletBinding()]
	param (
		# Project Name
		[Parameter(Mandatory=$true, HelpMessage="Scala project name (dir name)")]
		[string]
		$ProjectName
	)	
	begin {
		try
		{
			git | Out-Null
			"Git is installed"
			$HasGit = $true	
		}
		catch [System.Management.Automation.CommandNotFoundException]
		{
			"Git is not found! It is required to clone the skeleton project. Please install it and try again."
			$HasGit = $false
		}
	}

	process {
		if ($HasGit){ 
			Write-Host "Cloning skeleton project..."
			Invoke-Expression "git clone https://github.com/karanveersp/skeleton $ProjectName"
			Invoke-Expression "Remove-Item -Recurse -Force $ProjectName/.git"
			Write-Host "Deleted .git folder in $ProjectName"
		}	
	}
	
	end {
	}

}