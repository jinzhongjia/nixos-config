{ config, pkgs, ... }:

{
    i18n = {
      
      defaultLocale = "zh_CN.UTF-8";
      supportedLocales = [ "zh_CN.UTF-8/UTF-8" "en_US.UTF-8/UTF-8" ];
      extraLocaleSettings = {
        LC_ADDRESS = "en_US.utf8";
        LC_IDENTIFICATION = "en_US.utf8";
        LC_MEASUREMENT = "en_US.utf8";
        LC_MONETARY = "en_US.utf8";
        LC_NAME = "en_US.utf8";
        LC_NUMERIC = "en_US.utf8";
        LC_PAPER = "en_US.utf8";
        LC_TELEPHONE = "en_US.utf8";
        LC_TIME = "en_US.utf8";
      };
      inputMethod = {

        enabled = "ibus";
        ibus.engines = with pkgs.ibus-engines; [ rime  libpinyin ];

      };
    };
}
