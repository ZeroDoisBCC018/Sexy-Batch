if errorlevel 4 goto LABEL4
if errorlevel 3 goto LABEL3
if errorlevel 2 goto LABEL2
if errorlevel 1 goto LABEL1
:SUCCESS
  echo SUCCESS; errorlevel 0
  goto :eof
:LABEL1
  echo FAILURE; errorlevel 1
  goto :eof
:LABEL2
  echo FAILURE; errorlevel 2
  goto :eof
