function prompt {

  $p = split-path -leaf -path (get-Location)
  $q = split-path -parent -path (get-Location)

  if($q) {
    $r = split-path -leaf -path ($q)
  }

  if ($q -eq $r) {
    "PS $q$p> "
  } elseif (-not $q) {
    "PS $p> "
  } else {
      "PS $r\$p> "
  }
  
}

