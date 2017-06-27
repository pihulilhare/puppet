#UserDeletion :
user { 'priya':
        ensure => 'absent',
}
'''output

[root@client ~]# id priya
id: priya: no such user
