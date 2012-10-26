class tasseo {
  if ($osfamily == 'redhat') {
    err("This module doesn't yet support redhat systems")
  }

  if ($osfamily == 'debian') {
    include tasseo::debian
  }
}
