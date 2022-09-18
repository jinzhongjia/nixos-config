{...}:

{
    # Enable sound with pipewire.
    # sound.enable = true;
    
    
    security.rtkit.enable = true;
    hardware.pulseaudio.enable = false;
    services.pipewire = {
        # Whether to enable pipewire service.
        enable = true;
        # Whether to enable JACK audio emulation.
        jack.enable = true;
        # Whether to enable ALSA support.
        alsa.enable = true;
        # Whether to enable 32-bit ALSA support on 64-bit systems.
        alsa.support32Bit = true;
        # Whether to enable PulseAudio server emulation.
        pulse.enable = true;
        # Whether to use PipeWire as the primary sound server
        audio.enable = true;
    };

}