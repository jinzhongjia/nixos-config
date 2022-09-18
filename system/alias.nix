{ config, ... }:

{
  environment.shellAliases = {
    buildos = "sudo nixos-rebuild switch";
    upgradeos = "sudo nixos-rebuild switch --upgrade";
  };
}
