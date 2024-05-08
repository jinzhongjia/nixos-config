{ config, pkgs, ... }:

{
  # This is useful for pipewire
  security.rtkit.enable = true;

  # enable ALSA sound.
  sound.enable = true;
  
  hardware.pulseaudio.enable = false;
  
  # Enable sound with pipewire.
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };
}
