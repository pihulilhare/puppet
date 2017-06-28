#Fiole Deletion
file { '/root/First_File.txt':
ensure => "Absent",
}
'''output
[root@client ~]# cat First_File.txt
cat: First_File.txt: No such file or directory'''
