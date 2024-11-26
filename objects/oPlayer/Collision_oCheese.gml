if (place_meeting(x, y, oCheese)) {
Playerhealth += 100;
		audio_play_sound(roblox_eating_sound_effect_nom_nom_nom, 2, false)
        with (instance_place( x, y, oSoap)) {
            instance_destroy();
        }
}