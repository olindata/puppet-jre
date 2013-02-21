class jre {

  package { 'sun-java6-jre':
    ensure       => latest,
    require      => File['/var/cache/debconf/jre6.seeds'],
    responsefile => '/var/cache/debconf/jre6.seeds',
  }

  file { '/var/cache/debconf/jre6.seeds':
    ensure => present,
    source => 'puppet:///modules/jre/jre6.seeds',
  }

}