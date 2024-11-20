if (place_meeting(x, y, oSoap)) {
Playerhealth += 100;
        with (instance_place( x, y, oSoap)) {
            instance_destroy();
        }
		audio_play_sound(snd_eating, 1, false)
}