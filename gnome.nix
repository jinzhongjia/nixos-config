{ config, pkgs, ... }:

{
  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  
  # some gnome plugins
  environment.systemPackages = with pkgs.gnomeExtensions;[
    blur-my-shell
    caffeine
    dock-from-dash
    lock-keys
    quick-settings-audio-panel
    muteunmute
    vitals
    coverflow-alt-tab
    quick-touchpad-toggle
    tray-icons-reloaded
    clipboard-indicator
    no-overview
  ];
}
