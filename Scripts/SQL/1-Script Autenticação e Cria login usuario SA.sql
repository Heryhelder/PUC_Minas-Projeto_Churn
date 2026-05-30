sqlcmd -S localhost\SQLEXPRESS -E -Q "USE [master]; EXEC xp_instance_regwrite N'HKEY_LOCAL_MACHINE', N'Software\Microsoft\MSSQLServer\MSSQLServer', N'LoginMode', REG_DWORD, 2;"

net stop MSSQL$SQLEXPRESS
net start MSSQL$SQLEXPRESS

sqlcmd -S localhost\SQLEXPRESS -E -Q "ALTER LOGIN sa ENABLE;"
sqlcmd -S localhost\SQLEXPRESS -E -Q "ALTER LOGIN sa WITH PASSWORD = '<Senha para o usuário SA>';"
