Clear-Host

Write-Host ""
Write-Host "=============================================" -ForegroundColor Cyan
Write-Host "        AUTO WINDOWS - IVAN SALCEDO"
Write-Host "=============================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "1. Información del equipo"
Write-Host "2. Limpiar DNS"
Write-Host "3. Limpiar archivos temporales"
Write-Host "4. Reiniciar adaptadores de red"
Write-Host "5. Salir"
Write-Host ""

$opcion = Read-Host "Seleccione una opción"

switch ($opcion)
{
    "1" {
        systeminfo
        Pause
    }

    "2" {
        ipconfig /flushdns
        Pause
    }

    "3" {
        Remove-Item "$env:TEMP\*" -Recurse -Force -ErrorAction SilentlyContinue
        Write-Host "Archivos temporales eliminados."
        Pause
    }

    "4" {
        ipconfig /release
        ipconfig /renew
        Pause
    }

    "5" {
        exit
    }

    Default {
        Write-Host "Opción inválida."
        Pause
    }
}
