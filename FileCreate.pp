file { '/root/First_File.txt':
  ensure => "file",
  owner  => "root",
  group  => "root",
  mode   => "755",
  content => "Hello..!! Welcome to d world of PUPPET",
  }                                                                                                               ~    
