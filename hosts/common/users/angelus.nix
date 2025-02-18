{
config,
pkgs,
inputs,
...

}: {

 # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.angelus = {
    initialHashedPassword = "$y$j9T$/KGqXIECt41rWY/79QnEC.$Y9lePz353IvKjtDvFE2oDhUT9ntnFD1zjCEfzZuICY7";
    isNormalUser = true;
    description = "angelus";
    extraGroups = [
      "audio"
      "deluge"
      "docker"
      "git"
      "i2c"
      "libvirtd"
      "lxd"
      "minecraft"
      "mysql"
      "network"
      "plugdev"
      "podman"
      "video"
      "wheel"
      "wireshark"  
      "networkmanager" 
    ];

    openssh.authorizedKeys.keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGZZb2c2tajrB4b6knZgjDU+JXiWWeL+Ja/AxdyFre78"
      ];
    packages = [inputs.home-manager.packages.${pkgs.sytem}.default];
  };
    home-manager.users.angelus =
      import ../../../home/angelus/${config.networking.hostname}.nix;

}