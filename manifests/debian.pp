class tasseo::debian {
  package {
    'git-core' :
      alias  => 'git',
      ensure => present;
  }
}
