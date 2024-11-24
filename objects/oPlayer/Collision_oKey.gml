if (place_meeting(x, y, oKey)) {
key++;
        with (instance_place(x, y, oKey)) {
            instance_destroy();
        }
		audio_play_sound(botw_item_pickup_made_with_Voicemod, 1, false)
}