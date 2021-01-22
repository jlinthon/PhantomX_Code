$Output= @()
$names = Get-content "C:\Users\Administrator\Desktop\IP_List.txt"
foreach ($name in $names) {
  if (Test-NetConnection -ComputerName $name -port 3389){
   $Output+= "$name,True"
  }
  else{
    $Output+= "$name,False"
  }
}

$Output= @()
$names = Get-content "C:\Users\Administrator\Desktop\IP_List.txt"
foreach ($name in $names) {
  if (Test-NetConnection -ComputerName $name -port 80){
   $Output+= "$name,True"
  }
  else{
    $Output+= "$name,False"
  }
}

