$Output= @()
$names = Get-content "C:\Users\Administrator\Desktop\IP_List.txt"
foreach ($name in $names){
  if (Test-Connection -ComputerName $name -Count 1 -ErrorAction SilentlyContinue){
   $Output+= "$name is up"
   Write-Host "$Name is up" -ForegroundColor Green
  }
  else{
    $Output+= "$name is down"
    Write-Host "$Name is down" -ForegroundColor Red
  }
}
$Output | Out-file "C:\Users\Administrator\Desktop\result.txt"
