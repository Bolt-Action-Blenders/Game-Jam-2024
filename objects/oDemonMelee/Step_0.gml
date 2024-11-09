// Check if the enemy's health is less than or equal to 0, and destroy the instance if so
if (health <= 0) {
    instance_destroy(); // Destroy this instance of the enemy
    show_debug_message("Cry");
    return; // Exit the current logic since the enemy is destroyed
}

// Player's position
var player_x = oPlayer.x;
var player_y = oPlayer.y;

// Initialize cooldown and movement speed
var last_action_time = 0; 
var cooldown_time = 1; // Example cooldown time (define as per your game mechanics)
var walksp = 2; // Movement speed (adjust as needed)

move_towards_point(player_x, player_y, walksp); // Move toward the player


// Check if oPlayer exists and if the player is in range
if (instance_exists(oPlayer) && place_meeting(x, y, oPlayer)) {
	global.time++;
    // Ensure enough time has passed for the cooldown before attacking
    if (global.time - last_action_time >= cooldown_time) {
            // Apply damage to the player
            oPlayer.health -= (damage * level); // Adjust damage based on level
            // Update the last action time
            last_action_time = global.time;

            // Move the enemy away from the player (optional; depends on your game design)
            move_towards_point(x, y, 0);  // Stops the movement (enemy does not continue forward)
    }
}
