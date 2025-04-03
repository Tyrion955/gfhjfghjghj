AMIDEWINx64.EXE /SU %random%
AMIDEWINx64.EXE /SS "%random%-%random%-%random%"
AMIDEWINx64.EXE /SV "%random%.%random%"
AMIDEWINx64.EXE /CSK "%random%%random%%random%%random%"
AMIDEWINx64.EXE /CM  "%random%%random%%random%%random%"
AMIDEWINx64.EXE /SP "MS-%random%"
AMIDEWINx64.EXE /SM "%random% International Co., Ltd."
AMIDEWINx64.EXE /SK "Fabled-%random%"
AMIDEWINx64.EXE /SF "Fabled-%random%"
AMIDEWINx64.EXE /BM "%random% International Co., Ltd."
AMIDEWINx64.EXE /BP "H%random%M-A PRO (MS-%random%)"
AMIDEWINx64.EXE /BV "%random%.%random%"
AMIDEWINx64.EXE /BT "%random%%random%%random%%random%"
AMIDEWINx64.EXE /BLC "%random%%random%%random%%random%"
AMIDEWINx64.EXE /PSN "%random%%random%%random%%random%"
AMIDEWINx64.EXE /PAT "%random%%random%%random%%random%"
AMIDEWINx64.EXE /PPN "%random%%random%%random%%random%"
AMIDEWINx64.EXE /CSK "%random%%random%%random%%random%"
AMIDEWINx64.EXE /CS "%random%%random%%random%%random%"
AMIDEWINx64.EXE /CV "%random%.%random%"
AMIDEWINx64.EXE /CM "%random% International Co., Ltd."
AMIDEWINx64.EXE /CA "hoodprinz-%random%"
AMIDEWINx64.EXE /CO "%random% %random%h"
AMIDEWINx64.EXE /CT "0%random%h"
AMIDEWINx64.EXE /IV "%random%.%random%"
AMIDEWINx64.EXE /IVN "%random% Megatrends International, LLC."
AMIDEWINx64.EXE /BS "%random%%random%%random%%random%"
cls
net stop winmgmt /y
net start winmgmt /y
sc stop winmgmt
timeout 1
sc start winmgmt
timeout 1
exit