{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        kmod
    ];
    services.v2raya.enable = true;
}
