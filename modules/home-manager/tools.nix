{

  programs.bash = {
    enable = true;
    enableCompletion = true;
    enableVteIntegration = true;
  };

  programs.starship.enable = true;

  programs.btop = {
    enable = true;
  };

  programs.fzf = {
    enable = true;
    enableBashIntegration = true;
  };

  programs.yazi = {
    enable = true;
    enableBashIntegration = true;
  };

  programs.ripgrep = {
    enable = true;
  };

  programs.z-lua = {
    enable = true;
  };
}