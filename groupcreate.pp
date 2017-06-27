
#GroupCreation :
group { 'group1':
        ensure => 'present',
        gid => 500,
        members => 'priya',
}
'''output
[root@client ~]# cat /etc/group
group1:x:500:
