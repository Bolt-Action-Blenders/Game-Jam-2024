//Demon code
    show_debug_message(Playerhealth)
// Check if the player is within 3 units of the object
if (distance_to_object(oFinalBoss) <= 3) {
    var demon_cooldown_time = 1
    if (global.time - last_action_time >= demon_cooldown_time) {
        // Apply damage to the player
		Playerhealth -= 20
        // Update the last action time to the current global time
        last_action_time = global.time;
		audio_play_sound(hurt, 1, false)
    }
}