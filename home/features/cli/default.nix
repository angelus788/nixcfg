{pkgs, ...}: {

#allows to quickly move between dirs
programs.zoxide = {
  enable = true;
  enableFishIntegration = true;

};

#allows to replace ls cmd
programs.eza = {
  enable = true;
  enableFishIntegration = true;
  enableBashInegration = true;
  extraOptions = ["-l" "--icons" "--git" "-a"];
};

#repaclement for cat cmd
progams.bat = {enable = true;};

home.packages = with pkgs; [
  coreutils
  fd
  htop
  httpie
  jq
  procs
  ripgrep
  tldr
  zip
];

}