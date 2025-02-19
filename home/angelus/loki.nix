{ config, ... }: { 
  imports = [ 
    ../features/cli 
    ../common 
    ./home.nix
  ];
}
