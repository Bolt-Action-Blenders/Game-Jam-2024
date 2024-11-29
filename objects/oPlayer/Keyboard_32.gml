    if (keyboard_check(ord("space") && oPlayer.bucket)) {				
				        if (global.time - last_splash >= bucket_cooldown) {
				wet = true;
				 last_splash = global.time;
				 audio_play_sound(water_splash_199583, 1, false)
            }
        }