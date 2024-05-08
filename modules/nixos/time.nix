{ config, pkgs, ... }:

{
  # Set your time zone.
  time.timeZone = "Asia/Shanghai";

  # use hardware clock in local time
  time.hardwareClockInLocalTime = true;

  networking.timeServers = [
    "cn.ntp.org.cn"
    "ntp.ntsc.ac.cn"
  ];
}
