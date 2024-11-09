// Check if the enemy's health is less than or equal to 0, and destroy the instance if so
if (demonHealth <= 0) {
    instance_destroy(); // Destroy this instance of the enemy
    return; // Exit the current logic since the enemy is destroyed
}

// Player's position
var player_x = oPlayer.x;
var player_y = oPlayer.y;

move_towards_point(player_x, player_y, walksp);