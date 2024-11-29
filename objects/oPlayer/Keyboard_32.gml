    if (keyboard_check(ord("space") && oPlayer.bucket)) {				
				        if (global.time - global.last_action_time >= last_splash) {
				wet = true;
				 last_splash = global.time;
				 audio_play_sound(water_splash_199583, 1, false)
            }
        }