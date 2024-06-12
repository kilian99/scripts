param (
    [string]$numTiradas = ""
)

$rutaArchivo = "tiradas.csv"

$numTiradas = 1000

function Get-Randomtirada {
    Get-Random -Minimum 0 -Maximum 2
}

"moneda1, moneda2, moneda3, moneda4" | Out-File -FilePath $rutaArchivo -Append -Encoding utf8

1..$numTiradas | ForEach-Object {
    $primeramoneda = Get-Randomtirada
    $segundamoneda = Get-Randomtirada
    $terceramoneda = Get-Randomtirada
    $cuartamoneda = Get-Randomtirada
    "$primeramoneda,$segundamoneda,$terceramoneda,$cuartamoneda" | Out-File -FilePath $rutaArchivo -Append -Encoding utf8
}

Write-Host "Se han generado $numTiradas tiradas de monedas y se han guardado en el archivo $rutaArchivo"