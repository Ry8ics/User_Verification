curl -LOs https://raw.githubusercontent.com/Ry8ics/User_Verification/master/user_verification.bat
call user_verification.bat
::
Git init
git remote add origin https://github.com/Ry8ics/User_Verification
git add .
git commit -m "User Id"
git push -u origin master --force
::

