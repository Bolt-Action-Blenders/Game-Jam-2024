/*
// Initialize last_action_time if not already done elsewhere
var last_action_time = 0;

// Check if the player is within 3 units of the object
if (distance_to_object(oPlayer) <= 3) {
    // Calculate damage based on the player's level
    var cooldown_time = 1; // Set the cooldown time (in frames)
    
    global.time++; // Increment global time (used for cooldown tracking)

    // Ensure enough time has passed for the cooldown before attacking
    if (global.time - last_action_time >= cooldown_time) {
        // Apply damage to the player
        oPlayer.health -= damage;

        // Update the last action time to the current global time
        last_action_time = global.time;

        // Debug message to show the player's current health
        show_debug_message("Player's health: " + string(oPlayer.health));
    }
}
