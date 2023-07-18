function prompt {

  $p = split-path -leaf -path (get-Location)
  $q = split-path -parent -path (get-Location)
  $branch = git rev-parse --abbrev-ref HEAD 


  if ($q) {
    $r = split-path -leaf -path ($q)
  }

  if ($branch) {
    if ($q -eq $r) {
      Write-Host "PS $q$p " -NoNewline
      Write-Host "$branch HEAD" -ForegroundColor Blue -NoNewline
      Write-Host ">" -NoNewline
      " "
    }
    elseif (-not $q) {
      Write-Host "PS $p " -NoNewline
      Write-Host "$branch HEAD" -ForegroundColor Blue -NoNewline
      Write-Host ">" -NoNewline
      " "
    }
    else {
      Write-Host "PS $r\$p " -NoNewline
      Write-Host "$branch HEAD" -ForegroundColor Blue -NoNewline
      Write-Host ">" -NoNewline
      " "
    }
  } else {
    if ($q -eq $r) {
      "PS $q$p> "
    }
    elseif (-not $q) {
      "PS $p> "
    }
    else {
      "PS $r\$p> "
    }
  }
  
} 
