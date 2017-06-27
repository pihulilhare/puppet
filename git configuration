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
