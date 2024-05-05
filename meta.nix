{ config, pkgs, ... }:

{
    system.stateVersion = "23.11";
    # Allow unfree packages
    nixpkgs.config.allowUnfree = true;

    nix.settings.experimental-features = ["nix-command" "flakes"];
    
    environment.systemPackages = with pkgs; [
      vim
      curl
      wget
      git
      lazygit
    ];
    
    services.printing.enable = true;
    
    services.xserver.enable = true;
    services.xserver.xkb.layout = "cn";
}
