
# script for creating user
user { 'priya': 
   ensure     => 'present', 
   uid        => '501',                                                                      
   shell      => '/bin/bash', 
   managehome => 'true', 
}
'''output
[root@client ~]# id priya
id: priya: no such user
[root@client ~]# puppet agent -t 
   Info: Retrieving pluginfacts 
   Info: Retrieving pluginInfo: Loading facts 
   Info: Caching catalog for client.c.api-project-931139647699.internal 
   Info: Applying configuration version '1498560943'Notice: Finished catalog run in 0.17 seconds 
[root@client ~]# id priya
uid=501(priya) gid=1003(priya) groups=1003(priya)'''



