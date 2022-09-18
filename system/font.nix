{ pkgs, ... }:

{
  fonts = {
    fontDir.enable = true;
    fontconfig.enable = true;
    fonts = with pkgs; [
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
      noto-fonts-emoji
      sarasa-gothic  #更纱黑体
      source-code-pro
      source-han-mono
      source-han-sans
      source-han-serif
      hack-font
      jetbrains-mono
      wqy_zenhei
      # nerd font 用于终端图标显示
      (
        nerdfonts.override { 
            fonts = [
                "FiraCode"
                "DroidSansMono"
              ]; 
          }
        )
      nur.repos.rewine.ttf-wps-fonts # wps补全字体
    ];
  };
}