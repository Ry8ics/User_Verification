::
@echo off
::
:: Script for licensing of internal software products.
::
:: When the script is run notify SPM for preparation
:: of the license. 
::
::if not exist applicants mkdir applicants
FOR /F "usebackq" %%i IN (`whoami /upn`) DO SET _host=%%i
::
::
:: Get username
whoami  /upn                    >%_host%.txt
whoami                         >>%_host%.txt
:: Get hard disk serial number 
vol c:                         >>%_host%.txt
::
:: Get machine id
hostname                       >>%_host%.txt
::
:: Get computer serialnumber  
wmic bios get serialnumber     >>%_host%.txt
::
