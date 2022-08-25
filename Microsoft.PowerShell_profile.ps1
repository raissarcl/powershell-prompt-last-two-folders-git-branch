function prompt {

  $p = split-path -leaf -path (get-Location)
  $q = split-path -parent -path (get-Location)
  $r = split-path -qualifier -path (get-Location)

  if($q) {
    $s = split-path -leaf -path ($q)
  }

  if ($q -eq $s) {
    "PS $q$p> "
  } elseif (-not $q) {
    "PS $r> "
  } else {
      "PS $s\$p> "
  }
  
}
