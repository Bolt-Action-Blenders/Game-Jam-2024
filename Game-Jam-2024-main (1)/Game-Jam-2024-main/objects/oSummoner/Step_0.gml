// Check if the enemy's health is less than or equal to 0, and destroy the instance if so
if (demonHealth <= 0) {
    instance_destroy(); // Destroy this instance of the enemy
    return; // Exit the current logic since the enemy is destroyed
}

// Player's position
var player_x = oPlayer.x;
var player_y = oPlayer.y;

h_speed = walksp;
v_speed = walksp;

if (place_meeting(x, y + v_speed, oWall) || place_meeting(x, y + v_speed, oLockedDoor)) {
	v_speed = 0;

}
if (place_meeting( x + h_speed, y, oWall) || place_meeting(x + h_speed, y, oLockedDoor)) {
	h_speed = 0;
}


x += sign(player_x - x) * h_speed * -1
y += sign(player_y - x) * v_speed * -1


    var demon_cooldown_time = 50 * fps; // Set the cooldown time (in frames)
    if (current_time - global.last_action_time >= demon_cooldown_time) {
        global.last_action_time = current_time;
		instance_create_depth(x, y, 0, oShitDemon);
    }
