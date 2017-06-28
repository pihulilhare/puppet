
##GroupDeletion :
group { 'group1':
        ensure => 'absent',
}
'''output
[root@client ~]# grep group1 /etc/group
[root@client ~]# 
'''
