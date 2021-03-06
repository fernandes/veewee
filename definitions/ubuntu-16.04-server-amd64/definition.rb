Veewee::Session.declare({
  :cpu_count => '1',
  :memory_size => '512',
  :disk_size => '65536',
  :disk_format => 'VDI',
  :hostiocache => 'off',
  :os_type_id => 'Ubuntu_64',
  :iso_file => "ubuntu-16.04-server-amd64.iso",
  :iso_src => "http://www.linorg.usp.br/ubuntu-releases/16.04/ubuntu-16.04-server-amd64.iso ",
  :iso_md5 => "23e97cd5d4145d4105fbf29878534049",
  :iso_download_timeout => "1000",
  :boot_wait => "4",
  :boot_cmd_sequence => [
    '<enter><wait><f6><esc><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>',
    '<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>',
    '<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>',
    '<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>',
    '/install/vmlinuz<wait>',
    ' auto<wait>',
    ' console-setup/ask_detect=false<wait>',
    ' console-setup/layoutcode=us<wait>',
    ' console-setup/modelcode=pc105<wait>',
    ' debconf/frontend=noninteractive<wait>',
    ' debian-installer=en_US<wait>',
    ' fb=false<wait>',
    ' initrd=/install/initrd.gz<wait>',
    ' kbd-chooser/method=us<wait>',
    ' keyboard-configuration/layout=USA<wait>',
    ' keyboard-configuration/variant=USA<wait>',
    ' locale=en_US<wait>',
    ' netcfg/get_domain=vm<wait>',
    ' netcfg/get_hostname=vagrant<wait>',
    ' grub-installer/bootdev=/dev/sda<wait>',
    ' noapic<wait>',
    ' preseed/url=http://%IP%:%PORT%/preseed.cfg<wait>',
    ' -- <wait>',
    '<enter><wait>'
],
  :kickstart_port => "7122",
  :kickstart_timeout => "300",
  :kickstart_file => "preseed.cfg",
  :ssh_login_timeout => "10000",
  :ssh_user => "vagrant",
  :ssh_password => "vagrant",
  :ssh_key => "",
  :ssh_host_port => "7222",
  :ssh_guest_port => "22",
  :sudo_cmd => "echo '%p'|sudo -S sh '%f'",
  :shutdown_cmd => "shutdown -P now",
  :postinstall_files => [
   "build_time.sh",
   "apt.sh",
   "sudo.sh",
   "vagrant.sh",
   #"ruby.sh",
   #"chef.sh",
   #"puppet.sh",
   "vbox.sh",
   # "parallels.sh",
   "cleanup.sh"
  ],
  :postinstall_timeout => "10000"
})
