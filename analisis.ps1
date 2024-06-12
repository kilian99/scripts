$rutaArchivo = "tiradas.csv"

$tiradas = Get-Content -Path $rutaArchivo

$contador = 0

$tiradasTotales = $tiradas.Count

foreach ($tirada in $tiradas){
    $tiradita = $tirada -split ","
    if ($tiradita[0] -eq "0" -and $tiradita[1] -eq "0" -and $tiradita[2] -eq "0" -and $tiradita[3] -eq "0" ){
    $contador++
    }
}

$porcentaje = ($contador / $tiradasTotales) * 100

Write-Host "El porcentaje es: $porcentaje%"