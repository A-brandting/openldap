Openldap and JXplorer install 
1: Create a file on desktop.
•	Touch script.sh
2: Give execute permissions to the script.
•	Chmod +x script.sh
3: Insert code from this link into the script
•	 raw.githubusercontent.com/A-brandting/openldap/main/Create-docker.sh
4: RUN THE SCRIPT
•	Sudo ./script.sh
5: Open JXplorer from your application list
6: Press “File” and then “connect”.	
7: Fill in the details below:
•	Host: 172.17.0.1
•	Port: 1389
•	Protocol: LDAP v3
•	Base DN: dc=mangoflame,dc=com
•	Level: User + Password
•	UserDN: cn=ldap_admin,dc=mangoflame,dc=com
•	Password: *********
8:  DONE
