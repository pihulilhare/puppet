

#4. Write a script which will configure a git and clone some repository through it.

include git

git::config { 'user.name':
  value => 'pihulilhare',
}
git::config { 'user.email':
  value => 'priyanka.lilhare@gmail.com',
}

vcsrepo { '/tmp/git':
  ensure   => 'present',
  provider => 'git',
  source   => 'https://github.com/pihulilhare/puppet.git',
  #branch   => 'v2.2.0',
  #depth    => 1,
}
''' output

[priyanka_lilhare@client ~]$ sudo -i
[root@client ~]# ls
First_File.txt
[root@client ~]# cd /tmp
[root@client git]# git config --list
user.email=priyanka.lilhare@gmail.com
user.name=pihulilhare
core.repositoryformatversion=0 
core.filemode=true 
core.bare=false
core.logallrefupdates=true
remote.origin.url=https://github.com/pihulilhare/puppet.gitremote.origin.fetch=+refs/heads/*:refs/remotes/origin/*
branch.master.remote=origin
branch.master.merge=refs/heads/master
[root@client git]# ls
ileCreate.pp  groupcreate.pp  InstallGit.pp  site.pp           
usercreate.ppFileDelete.pp  groupdelete.pp  README.md     
tomcatinstall.pp  userdelete.pp'''
