-- DBA Networking Connections 

--Easy Connection Method 
connect <username>/<password>@<hostname>:<port>/<service_name> 

--Naming Connection Method 
connect <username>/<password>@<tns_alias>

--listener start (cmd and terminal(linux)) yazılmalı
lsnrctl start
lsnrctl status 
lsnrctl stop
lsnrctl reload

-- networking configuration tools (cmd and terminal(linux)) yazılmalı
netca
netmgr
tnsping
