class checkmk {


$my_deps =['apache2-bin', 'apache2-data',
     'apache2-utils','curl', 'debugedit', 'dialog', 'fontconfig',
     'fontconfig-config', 'fonts-dejavu-core', 'fonts-liberation',
     'fping', 'graphviz', 'lcab', 'libapache2-mod-fcgid',
     'libapr1', 'libaprutil1',
     'libaprutil1-dbd-sqlite3', 'libaprutil1-ldap',
     'libarchive13', 'libart-2.0-2', 'libavahi-client3',
     'libavahi-common-data',
     'libavahi-common3', 'libcairo2', 'libcdt5', 'libcgraph6',
     'libcups2', 'libcurl3', 'libdatrie1', 'libdbi1',
     'libevent-1.4-2', 'libfile-copy-recursive-perl',
     'libfontconfig1', 'libgd3', 'libgraphite2-3', 'libgsf-1-114',
     'libgsf-1-common', 'libgvc6', 'libgvpr2', 'libharfbuzz0b', 'libice6',
     'libjbig0', 'libjpeg-turbo8', 'libjpeg8', 'liblcms2-2', 'libldb1', 'libltdl7',
     'liblzo2-2', 'libmcrypt4', 'libnet-snmp-perl', 'libnspr4',
     'libnss3', 'libnss3-nssdb', 'libpango-1.0-0', 'libpango1.0-0',
     'libpangocairo-1.0-0', 'libpangoft2-1.0-0',
     'libpangox-1.0-0', 'libpangoxft-1.0-0', 'libpathplan4',
     'libpixman-1-0', 'libpython2.7',
     'librpm3', 'librpmbuild3', 'librpmio3',
     'libsensors4', 'libsm6', 'libsmbclient', 'libsnmp-base',
     'libsnmp-perl', 'libsnmp30', 'libtalloc2', 'libtdb1', 'libtevent0',
     'libthai-data', 'libthai0', 'libtiff5','libwbclient0',
     'libwebp5', 'libwebpmux1', 'libxaw7', 'libxcb-render0', 'libxcb-shm0',
     'libxft2', 'libxmu6', 'libxpm4', 'libxrender1', 'libxt6', 'php-pear',
     'poppler-utils', 'pyro', 'python-crypto',
     'python-imaging', 'python-ldap', 'python-ldb', 'python-netsnmp', 'python-openssl',
     'python-pil', 'python-renderpm', 'python-reportlab', 'python-reportlab-accel',
     'python-samba','python-talloc', 'python-tdb', 'rpm', 'rpm-common',
     'rpm2cpio', 'samba-common', 'samba-common-bin', 'samba-libs', 'smbclient',
     'snmp','ssl-cert', 'traceroute', 'unzip', 'update-inetd', 'x11-common',
     'libreadline5', 'xinetd', 'binutils', 'apache2', 'php7.0-cgi', 'php-cgi', 'php-gd',
     'php-mcrypt', 'php-sqlite3', 'rpcbind', 'freeradius-utils'
      ]

  package {
    $my_deps: ensure => present,
  }->
    wget::fetch { "get checkmk blob":
      source      => 'https://mathias-kettner.de/support/1.2.8p14/check-mk-raw-1.2.8p14_0.xenial_amd64.deb',
      destination => '/tmp/',
      timeout     => 0,
      verbose     => true,
    }->
  package { 'check-mk-raw-1.2.8p14_0.xenial_amd64.deb':
    provider => 'dpkg',
    ensure   => present,
    source   =>  "/tmp/check-mk-raw-1.2.8p14_0.xenial_amd64.deb",
  }

}
