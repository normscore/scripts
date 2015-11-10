@echo off

c:

@echo on

rem    ============================================ 
rem       Disable IPv6 RSS & TCP Chimney Offload    
rem    ============================================ 

pause

rem <<<<<Showing current Network Settings>>>>>

netsh int tcp show global

pause

rem <<<<<Press enter to disable RSS>>>>>

pause

netsh int tcp set global rss=disabled

pause

rem <<<<<Press enter to disable TCP Chimney Offload>>>>>
pause

netsh int tcp set global chimney=disabled

pause

rem <<<< Press enter to disable 

netsh int tcp set global rsc=disabled

rem <<<<<Press enter to disable IPv6>>>>>
pause
netsh interface 6TO4 set state disabled undoonstop=disabled

pause

rem <<<<<Press enter to view the new network settings>>>>>

netsh int tcp show global > c:\network_global.txt

notepad.exe C:\network_global.txt

