

#Write a script which do the installation of tomcat server and deploy a war file through it.
#puppet module install puppetlabs/java
# In site.pp

class { 'java':
  package => 'java-1.8.0 =openjdk-devel',
}

# install apachetomcat
#puppet module install puppetlabs-tomcat
# In site.pp

tomcat::install { '/opt/tomcat':
  source_url => 'https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.0.M21/bin/apache-tomcat-9.0.0.M21.tar.gz',
}
tomcat::instance { 'default':
  catalina_home => '/opt/tomcat',
}
tomcat::war { 'warfile.war':
  catalina_base => '/opt/tomcat',
  war_source    => '/opt/tomcat/webapps/docs/appdev/sample/warfile.war',
}

''' output
[root@client tomcat]# ls
bin  conf  lib  LICENSE  logs  NOTICE  RELEASE-NOTES  RUNNING.txt  temp  webapps  work
[root@client tomcat]# cd bin
[root@client bin]#     sh startup.sh
Using CATALINA_BASE:   /opt/tomcat
Using CATALINA_HOME:   /opt/tomcat
Using CATALINA_TMPDIR: /opt/tomcat/temp
Using JRE_HOME:        /usr/lib/jvm/java-1.8.0-openjdk-x86_64/
Using CLASSPATH:       /opt/tomcat/bin/bootstrap.jar:/opt/tomcat/bin/tomcat-juli.jar
Tomcat started.


[root@client bin]# curl localhost:8080'''

