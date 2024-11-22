// Check if the enemy's health is less than or equal to 0, and destroy the instance if so
if (demonHealth <= 0) {
    instance_destroy(); // Destroy this instance of the enemy
    return; // Exit the current logic since the enemy is destroyed
}
if oPlayer.Playerhealth <= 0 {
instance_create_layer(x,y,"instances",object_index)
instance_destroy()
}
// Player's position
var player_x = oPlayer.x;
var player_y = oPlayer.y;

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

if (distance_to_object(oPlayer) > range){
x += sign(player_x - x) * h_speed
y += sign(player_y - x) * v_speed
}
if (distance_to_object(oPlayer) < range){
x += sign(player_x - x) * h_speed * -1
y += sign(player_y - x) * v_speed * -1
}
timer++
if timer >= 50{
instance_create_layer(x,y,"instances",oGrenade)
timer = 0
}