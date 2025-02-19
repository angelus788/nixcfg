{
  config,
  pkgs,
  inputs,
  ...
}: {
  users.users.angelus = {
    initialHashedPassword = "$y$j9T$/KGqXIECt41rWY/79QnEC.$Y9lePz353IvKjtDvFE2oDhUT9ntnFD1zjCEfzZuICY7";
    isNormalUser = true;
    description = "angelus";
    extraGroups = [
      "networkmanager"
      "libvirtd"
      "flatpak"
      "audio"
      "plugdev"
      "input"
      "kvm"
      "qemu-libvirtd"
      "deluge"
      "docker"
      "git"
      "i2c"
      "lxd"
      "minecraft"
      "mysql"
      "network"
      "podman"
      "video"
      "wheel"
      "wireshark"
    ];
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGZZb2c2tajrB4b6knZgjDU+JXiWWeL+Ja/AxdyFre78"
    ];
    packages = [inputs.home-manager.packages.${pkgs.system}.default];
  };
  home-manager.users.angelus =
    import ../../../home/angelus/${config.networking.hostName}.nix;
}
