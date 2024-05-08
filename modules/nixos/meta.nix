{ config, pkgs, ... }:

{
    system.stateVersion = "23.11";

    nixpkgs.config.allowUnfree = true;    

    xdg.portal.xdgOpenUsePortal = true;
    
    zramSwap.enable = true;
    
    environment.systemPackages = with pkgs; [
      vim
      curl
      wget
      git
      lazygit
    ];
    
    services.printing.enable = true;
    
    services.thermald.enable = true;
    
    services.xserver.enable = true;
    services.xserver.xkb.layout = "cn";
    
    programs.git = {
      enable = true;
      prompt = {
        enable = true;
      };
    };
    
    # bash
    programs.bash = {
      enableCompletion = true;
      vteIntegration = true;
    };

    system.autoUpgrade = {
      enable = true;
      operation = "boot"; # If you don't want to apply updates immediately, only after rebooting, use `boot` option in this case
      flake = "/etc/nixos";
      flags = [ "--commit-lock-file" ];
      dates = "weekly";
    };

    nix.settings.auto-optimise-store = true;
    nix.optimise.automatic = true;
    nix.gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 14d";
    };
}
