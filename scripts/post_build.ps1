if (Test-Path "$PSScriptRoot\install.ps1")
{
    Write-Host "正在运行安装脚本 `"install.ps1 $args`"……"
    powershell.exe -ExecutionPolicy Bypass -NoProfile -File "$PSScriptRoot\install.ps1" $args
}

$dll_name = "Cleaner.dll"
$dll_path = "${out_dir}\${dll_name}"

Write-Output "正在拷贝插件到 CQHttp 扩展文件夹……"

Copy-Item -Force $dll_path "C:\Applications\CQA\app\io.github.richardchien.coolqhttpapi\extensions\${dll_name}"
Copy-Item -Force $dll_path "C:\Applications\酷Q Pro\app\io.github.richardchien.coolqhttpapi\extensions\${dll_name}"

Write-Output "拷贝完成。"
