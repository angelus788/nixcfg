{ config, ... }: { 
  imports = [ 
    ../features/cli 
    ../common 
    ./home.nix
  ];

  features = {
    cli = {
      fish.enable = true;
      fzf.enable = true;
      neofetch.enable = true;
    };
   desktop = {
      wayland.enable = true;
    };
  };
}
