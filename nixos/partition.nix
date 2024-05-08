{ config, lib, pkgs, modulesPath, ... }:

{
  fileSystems."/" =
    { device = "/dev/disk/by-uuid/9d093c7f-fa04-49d3-ab90-9c24d3673dd3";
      fsType = "btrfs";
      options = [ "subvol=@" ];
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/18C7-6782";
      fsType = "vfat";
      options = [ "fmask=0022" "dmask=0022" ];
    };

  swapDevices = [{
      device = "/dev/disk/by-uuid/2d0562c6-610d-44e4-9393-67e99c86849a";
    }];
}