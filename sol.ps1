#sol.ps1
#Tim Way
#http://way.vg/blog

#Handle Parameters: Start
param( [string]$attempts = 1,[string]$hostname = $null,[string]$fromfile = $null )
#Handle Parameters: End

#Declare Variables: Start
$targets = $null #an array of host names that we will attempt to remotely shutdown
#Declare Variables: End

if ($fromfile)
{
	if (Test-Path $fromfile)
	{
		$targets = Get-Content $fromfile
		foreach($t in $targets)
		{
			Stop-Computer -ComputerName $t -ErrorAction SilentlyContinue -Force
		}
	}
}