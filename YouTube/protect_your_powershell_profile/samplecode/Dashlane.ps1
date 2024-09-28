Function Import-Environment {
  [CmdletBinding()]
  param(
      $SecureNote = 'EnvironmentVariables',
      [switch]$KeepUnlocked
  )

  # setup to load secrets
  Import-Module powershell-yaml
  dcli sync
  $yml = dcli note $SecureNote
  $var = $yml | ConvertFrom-Yaml
  $var.EnvironmentVars.GetEnumerator() | ForEach-Object {
     Set-Item "Env:/$($_.Key)" -Value $_.Value -verbose
  }
  if(-not $KeepUnlocked) {
    dcli lock
  }
}

Import-Environment -verbose