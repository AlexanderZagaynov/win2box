for %%i in (f:\cert\vbox-*.cer) do f:\cert\VBoxCertUtil.exe add-trusted-publisher %%i --root %%i
f:\VBoxWindowsAdditions.exe /with_autologon /with_d3d /with_wddm /I /S
