#File Creation
file { '/root/First_File.txt':
  ensure => "file",
  owner  => "root",
  group  => "root",
  mode   => "755",
  content => "Hello..!! Welcome to d world of PUPPET",
  } 
  '''OUTPUT
  [root@client ~]# puppet agent -t
  Info: Retrieving pluginfacts
  Info: Retrieving pluginInfo: Loading facts
  Info: Caching catalog for client.c.api-project-931139647699.internal
  Info: Applying configuration version '1498560943'Notice: Finished catalog run in 0.17 seconds
  
  [root@client ~]# ls
  First_File.txt
