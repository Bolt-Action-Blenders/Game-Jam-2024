//Demon code
var demonID = 3;
    show_debug_message(Playerhealth)
// Check if the player is within 3 units of the object
if (distance_to_object(oDemonFast) <= 3) {
    var demon_cooldown_time = meleeCooldownTimes[demonID];
    if (global.time - last_action_time >= demon_cooldown_time) {
        // Apply damage to the player
		Playerhealth -= level * meleeBaseDamage[demonID];
        // Update the last action time to the current global time
        last_action_time = global.time;
    }
}
