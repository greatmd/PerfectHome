
# This is CPAN.pm's systemwide configuration file. This file provides
# defaults for users, and the values can be changed in a per-user
# configuration file. The user-config file is being looked for as
# ~/.cpan/CPAN/MyConfig.pm.

$CPAN::Config = {
  'build_cache' => q[10],
  'build_dir' => q[/home/esun1/.cpan/build],
  'cache_metadata' => q[1],
  'cpan_home' => q[/home/esun1/.cpan],
  'dontload_hash' => {  },
  'ftp' => q[/bin/rftp],
  'ftp_proxy' => q[wc-umpk-03.Eng.Sun.COM],
  'getcwd' => q[cwd],
  'gzip' => q[/usr/dist/exe/gzip],
  'http_proxy' => q[wc-umpk-03.Eng.Sun.COM],
  'inactivity_timeout' => q[0],
  'index_expire' => q[1],
  'inhibit_startup_message' => q[0],
  'keep_source_where' => q[/home/esun1/.cpan/sources],
  'lynx' => q[],
  'make' => q[/usr/ccs/bin/make],
  'make_arg' => q[],
  'make_install_arg' => q[],
  'makepl_arg' => q[],
  'ncftp' => q[],
  'ncftpget' => q[],
  'no_proxy' => q[wc-umpk-03.Eng.Sun.COM],
  'pager' => q[/bin/less],
  'prerequisites_policy' => q[ask],
  'proxy_user' => q[],
  'scan_cache' => q[atstart],
  'shell' => q[/bin/tcsh],
  'tar' => q[/usr/sbin/tar],
  'term_is_latin' => q[1],
  'unzip' => q[/bin/unzip],
  'urllist' => [q[ftp://cpan.cse.msu.edu/]],
  'wait_list' => [q[wait://ls6.informatik.uni-dortmund.de:1404]],
  'wget' => q[/home/esun1/bin/wget],
};
1;
__END__
