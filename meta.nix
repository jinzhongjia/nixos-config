{ config, pkgs, ... }:

{
    system.stateVersion = "23.11";
    
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
}
