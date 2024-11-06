if (place_meeting(x, y, oKey)) {
health += 60;
        with (instance_place(oDemon.x, oDemon.y, obj_item)) {
            instance_destroy();
        }
		audio_play_sound(snd_eating, 1, false)
}