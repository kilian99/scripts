$edad = Read-Host "¿Cuantos años tienes?"

$años=$(Get-Date).Year

$resta=[math]::Round($años - $edad)

Write-Output "$resta"
