{ config, pkgs, ... }:

{
  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  # for gnome settings
  services.udev.packages = with pkgs; [ gnome.gnome-settings-daemon ];  

  services.sysprof.enable = true;

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
    tray-icons-reloaded
    clipboard-indicator
    no-overview
    appindicator
    kimpanel
    fly-pie
    just-perfection
    touchpad-on-off
    
  ] ++ [
  pkgs.colloid-gtk-theme
  pkgs.whitesur-gtk-theme
  pkgs.catppuccin-gtk
  pkgs.gnome.gnome-tweaks
  ];
}
