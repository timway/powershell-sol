#sol.ps1

$computers = Get-Content "sol.mn154.txt"
foreach($c in $computers)
{
	Stop-Computer -ComputerName $c -ErrorAction SilentlyContinue -Force
}