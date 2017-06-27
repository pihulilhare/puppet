# script for creating user
user { 'priya': 
   ensure     => 'present', 
   uid        => '501',                                                                      
   shell      => '/bin/bash', 
   managehome => 'true', 
}
