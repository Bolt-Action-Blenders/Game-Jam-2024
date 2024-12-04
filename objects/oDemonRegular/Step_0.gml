if (!instance_exists(oPlayer) && distance_to_object(oPlayer) > 100000) {
    return; // Exit the event if oPlayer doesn't exist
}
// Check if the enemy's health is less than or equal to 0, and destroy the instance if so
if (demonHealth <= 0) {
    instance_destroy(); // Destroy this instance of the enemy
    return; // Exit the current logic since the enemy is destroyed
}
// Player's position
var player_x = oPlayer.x;
var player_y = oPlayer.y;

if (!distance_to_object(oPlayer) <= 1) {
move_towards_point(player_x, player_y, walksp); }


    // Calculate current knockback velocity
    var knockback_x = lengthdir_x(knockback_strength, oPlayer.direction);
    var knockback_y = lengthdir_y(knockback_strength, oPlayer.direction);

    // Check for wall collisions and move accordingly
    if (!place_meeting(x + knockback_x, y, oWall)) {
        x += knockback_x; // Move horizontally
    } else {
        knockback_x = 0; // Stop horizontal movement if colliding
    }

    if (!place_meeting(x, y + knockback_y, oWall)) {
        y += knockback_y; // Move vertically
    } else {
        knockback_y = 0; // Stop vertical movement if colliding
    }

    // Reduce knockback strength over time
    knockback_strength *= oPlayer.knockback_decay;

    // Stop knockback when strength is negligible
    if (knockback_strength < 0.5) {
        knockback_active = false; // End knockback
        knockback_strength = 0;   // Reset strength
    }