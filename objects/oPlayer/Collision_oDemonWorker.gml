//Demon code
var demonID = 8;
// Initialize last_action_time if not already done elsewhere
var demon_last_action_time;
    show_debug_message(health)
// Check if the player is within 3 units of the object
if (distance_to_object(oDemonWorker) <= 3) {
    var demon_cooldown_time = rangedCooldownTimes[demonID];
    if (global.time - last_action_time >= demon_cooldown_time) {
        // Apply damage to the player
		Playerhealth -= 1;
        // Update the last action time to the current global time
        last_action_time = global.time;
		audio_play_sound(hurt, 1, false)
    }
}
