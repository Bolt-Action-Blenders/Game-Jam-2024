var demon_cooldown_time = 10; 
// Check if the enemy's health is less than or equal to 0, and destroy the instance if so
if (demonHealth <= 0) {
    instance_destroy(); // Destroy this instance of the enemy
    return; // Exit the current logic since the enemy is destroyed
}

// Respawn the enemy if the player is dead
if (oPlayer.Playerhealth <= 0) {
    instance_create_layer(x, y, "instances", object_index); // Respawn
    instance_destroy();
}

// Player's position
var player_x = oPlayer.x;
var player_y = oPlayer.y;

// Movement logic
if (distance_to_object(oPlayer) > 250) {
    var move_x = lengthdir_x(walksp, point_direction(x, y, player_x, player_y));
    var move_y = lengthdir_y(walksp, point_direction(x, y, player_x, player_y));
} else {
		if (global.time - last_action_time >= demon_cooldown_time) {
    last_action_time = global.time;
    walksp = 0; // Stop movement
    sprite_index = sSummonerSummon; // Change sprite to summoning
    instance_create_depth(x, y, 0, oDemonRegular); // Summon demon
} else {
    walksp = 2; // Normal walking speed
    sprite_index = sSummonerWalk; // Change sprite to walking
}
    var move_x = lengthdir_x(-walksp, point_direction(x, y, player_x, player_y));
    var move_y = lengthdir_y(-walksp, point_direction(x, y, player_x, player_y));
}

// Check for wall collisions before moving
if (!place_meeting(x + move_x, y, oWall)) {
    x += move_x; // Move horizontally
}
if (!place_meeting(x, y + move_y, oWall)) {
    y += move_y; // Move vertically
}

// Knockback logic
var knockback_x = lengthdir_x(knockback_strength, oPlayer.direction);
var knockback_y = lengthdir_y(knockback_strength, oPlayer.direction);

// Check for wall collisions and apply knockback
if (!place_meeting(x + knockback_x, y, oWall)) {
    x += knockback_x; // Apply horizontal knockback
} else {
    knockback_x = 0; // Stop horizontal knockback if colliding
}

if (!place_meeting(x, y + knockback_y, oWall)) {
    y += knockback_y; // Apply vertical knockback
} else {
    knockback_y = 0; // Stop vertical knockback if colliding
}

// Reduce knockback strength over time
knockback_strength *= oPlayer.knockback_decay;

// Stop knockback when strength is negligible
if (knockback_strength < 0.5) {
    knockback_active = false; // End knockback
    knockback_strength = 0;   // Reset strength
}

