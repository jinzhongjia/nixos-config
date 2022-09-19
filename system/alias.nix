{ config, ... }:

{
  environment.shellAliases = {
    buildos = "sudo nixos-rebuild switch";
    upgradeos = "sudo nixos-rebuild switch --upgrade";

    # 个人使用
    pycharm = "conda-shell -e 'pycharm-professional'";
  };
}
