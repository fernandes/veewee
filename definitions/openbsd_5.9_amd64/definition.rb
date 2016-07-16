Veewee::Session.declare({
  :cpu_count => '1', :memory_size=> '256',
  :disk_size => '40960', :disk_format => 'VDI', :hostiocache => 'off',
  :os_type_id => 'OpenBSD_64',
  :iso_file => "openbsd59_64.iso",
  :iso_src => "http://openbsd.c3sl.ufpr.br/pub/OpenBSD/5.9/amd64/install59.iso",
  :iso_sha256 => "685262fc665425c61a2952b2820389a2d331ac5558217080e6d564d2ce88eecb",
  :iso_download_timeout => "1000",
  :boot_wait => "50", :boot_cmd_sequence => [
# I - install
   'I<Enter>',
# set the keyboard
   'us<Enter>',
# set the hostname
   'OpenBSD59-x64<Enter>',
# Which nic to config ? [em0]
   '<Enter>',
# do you want dhcp ? [dhcp]
   '<Enter>',
   '<Wait>'*5,
# IPV6 for em0 ? [none]
   'none<Enter>',
# Which other nic do you wish to configure [done]
   'done<Enter>',
# Pw for root account
   'vagrant<Enter>',
   'vagrant<Enter>',
# Start sshd by default ? [yes]
   'yes<Enter>',
# Do you want the X window system [yes]
   'no<Enter>',
# Setup a user ?
   'vagrant<Enter>',
# Full username
   'vagrant<Enter>',
# Pw for this user
   'vagrant<Enter>',
   'vagrant<Enter>',
# Allow root ssh login?
   'yes<Enter>',
# What timezone are you in ?
   'UTC<Enter>',
# Available disks [sd0]
   '<Enter>',
# Use (W)whole disk or (E)edit MBR ? [whole]
   'W<Enter>',
# Use (A)auto layout ... ? [a]
   'A<Enter>',
   '<Wait>'*20,
# location of the sets [cd]
   '<Enter>',
# Pathname to sets ? [5.9/amd64]
   '<Enter>',
# Remove games and X
   '-game59.tgz<Enter>',
   '-xbase59.tgz<Enter>',
   '-xetc59.tgz<Enter>',
   '-xshare59.tgz<Enter>',
   '-xfont59.tgz<Enter>',
   '-xserv59.tgz<Enter>',
   'done<Enter>',
   '<Wait>',
# CD does not contain SHA256.sig (5.5) Continue without verification?
   'yes<Enter>',
   '<Wait>'*20,
# Done installing ?
   'done<Enter>',
# Time appears wrong. Set to ...? [yes]
   'yes<Enter><Wait>',
   'reboot<Enter>',
   '<Wait>'*6
  ],
  :kickstart_port => "7122", :kickstart_timeout => "300", :kickstart_file => "",
  :ssh_login_timeout => "10000", :ssh_user => "root", :ssh_password => "vagrant", :ssh_key => "",
  :ssh_host_port => "7222", :ssh_guest_port => "22",
  :sudo_cmd => "sh '%f'",
  :shutdown_cmd => "/sbin/halt -p",
  :postinstall_files => [
    "base.sh",
    "vagrant.sh",
    #"ruby.sh",
    #"puppet.sh",
    #"chef.sh"
  ],
  :postinstall_timeout => "10000"
})
