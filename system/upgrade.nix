{ ... }:

{
  system.autoUpgrade = {
    enable = true;
    dates = "04:40";
    rebootWindow = {
      lower = "01:00";
      upper = "05:00";
    };
    # 暂时关闭效果
    #allowReboot = true;
    channel = https://mirror.nju.edu.cn/nix-channels/nixos-unstable;
  };
}
