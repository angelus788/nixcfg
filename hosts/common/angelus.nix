{
  config,
  pkgs,
  inputs,
...
}: {
  users.users.angelus = {
     initialHashedPassword = "";
     isNormalUser = "true";
     description = "angelus";
     extraGroups = [
      "wheel"
      "libvirtd"
      "flatpak"
      "audio"
      "video"
      "plugdev"
      "input"
      "kvm"
      "qemu-libvirtd"
   ];
  openssh.authorizedKeys.keys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGZZb2c2tajrB4b6knZgjDU+JXiWWeL+Ja/AxdyFre78"
  ];
  packages = [ inputs.home-manager.packages.${pkgs.system}.default ];
  
  };

}