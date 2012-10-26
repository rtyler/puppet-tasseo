class tasseo::debian {
  package {
    'git-core' :
      alias  => 'git',
      ensure => present;
  }

  file {
    '/srv' :
      ensure => directory;
  }

  exec {
    'clone tasseo' :
      command => 'git clone git://github.com/obfuscurity/tasseo.git',
      unless  => 'test -f /srv/tasseo/.git/config',
      cwd     => '/srv',
      path    => ['/bin', '/usr/bin'],
      require => [
        Package[git],
        File['/srv']
      ];
  }
}
