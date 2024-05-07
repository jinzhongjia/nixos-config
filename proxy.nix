{ config, pkgs, ... }:

{
    boot.kernelModules = [ "tproxy" ];
    services.v2raya.enable = true;
}
