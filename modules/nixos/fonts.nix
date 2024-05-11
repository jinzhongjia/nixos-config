{ inputs
, outputs
, lib
, config
, pkgs
, ...
}: {
  fonts = {
    packages = with pkgs; [
      noto-fonts
      noto-fonts-emoji
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
      noto-fonts-lgc-plus
      sarasa-gothic
      (nerdfonts.override { fonts = [ "FiraCode" "Ubuntu" "UbuntuMono" "Mononoki" "CascadiaCode" "DejaVuSansMono" ]; })
      font-awesome
      lexend
      material-symbols
      # microsoft fonts
      corefonts
      maple-mono-SC-NF
      lxgw-wenkai
      wqy_zenhei
      fira-code-nerdfont
      source-han-serif
    ];
    fontDir.enable = true;
    enableDefaultPackages = true;
    # fontconfig = {
    #   enable = true;
    #   defaultFonts = {
    #     emoji = [ "Noto Color Emoji" ];
    #     monospace = [
    #       "CaskaydiaCove Nerd Font"
    #       "Sarasa Mono SC"
    #     ];
    #     sansSerif = [
    #       "Ubuntu Nerd Font"
    #       "Sarasa UI SC"
    #     ];
    #     serif = [
    #       "Ubuntu Nerd Font"
    #       "Sarasa fixed Slab SC"
    #     ];
    #   };
    # };
  };
}
