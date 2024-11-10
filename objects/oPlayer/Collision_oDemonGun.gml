//Demon code
var demonID = 0;
    show_debug_message(health)
// Check if the player is within 3 units of the object
if (distance_to_object(oDemonGun) <= ranges[demonID]) {
    var demon_cooldown_time = rangedCooldownTimes[demonID];
    if (global.time - last_action_time >= demon_cooldown_time) {
        // Apply damage to the player
		health -= level * rangedBaseDamage[demonID];
        // Update the last action time to the current global time
        last_action_time = global.time;
    }
}
