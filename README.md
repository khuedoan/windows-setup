# Automated Windows set up

Download [winget](https://github.com/microsoft/winget-cli)

```powershell
Start-BitsTransfer -Source https://raw.githubusercontent.com/khuedoan98/windows-setup/master/setup.ps1 -Asynchronous
Set-ExecutionPolicy RemoteSigned
```

