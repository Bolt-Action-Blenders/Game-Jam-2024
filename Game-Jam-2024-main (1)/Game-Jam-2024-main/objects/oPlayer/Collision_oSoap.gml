if (place_meeting(x, y, oSoap)) {
health += 60;
        with (instance_place( x, y, oSoap)) {
            instance_destroy();
        }
		audio_play_sound(snd_eating, 1, false)
}