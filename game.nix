{ pkgs, ... }:

{

  environment.systemPackages = with pkgs;[
    lutris-unwrapped
    bottles-unwrapped
    protonplus
  ];

  # steam
  programs.steam = {
    enable = true;
    extest.enable = true;
    localNetworkGameTransfers.openFirewall = true;
    remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
    dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    gamescopeSession.enable = true; # enable gamescope
    package = pkgs.steam.override {
      extraPkgs = pkgs: [ pkgs.wqy_zenhei ];
    };
  };
  
  programs.gamemode = {
    enable = true;
    settings = {
      general = {
        reaper_freq = 5;
        desiredgov = "performance";
        igpu_desiredgov = "powersave";
        igpu_power_threshold = "0.3";
        softrealtime = "on";
        renice = 0;
        ioprio = 0;
        inhibit_screensaver = 1;
        disable_splitlock = 1;
      };
      filter = { };
      gpu = { };
      cpu = { };
      supervisor = { };
      custom = { };
    };
  };
}
