{ ... }:

{
  system.autoUpgrade = {
    enable = true;
    dates = "03:30";
    operation = "switch";
    allowReboot = true;
    rebootWindow = {
      lower = "01:00";
      upper = "05:00";
    };
    # 暂时关闭效果
    #allowReboot = true;
    channel = "https://mirror.nju.edu.cn/nix-channels/nixos-unstable";
  };
}
