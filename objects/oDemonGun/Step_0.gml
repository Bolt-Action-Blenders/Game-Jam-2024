// Check if the enemy's health is less than or equal to 0, and destroy the instance if so
if (demonHealth <= 0) {
    instance_destroy(); // Destroy this instance of the enemy
    return; // Exit the current logic since the enemy is destroyed
}

// Player's position
var player_x = oPlayer.x;
var player_y = oPlayer.y;
/*
h_speed = walksp;
v_speed = walksp;

if (place_meeting(x, y + v_speed, oWall) || place_meeting(x, y + v_speed, oLockedDoor)) {
	v_speed = 0;

}
if (place_meeting( x + h_speed, y, oWall) || place_meeting(x + h_speed, y, oLockedDoor)) {
	h_speed = 0;
}

if (distance_to_object(oPlayer) > range){
x += sign(player_x - x) * h_speed
y += sign(player_y - x) * v_speed
}
if (distance_to_object(oPlayer) < range){
x += sign(player_x - x) * h_speed * -1
y += sign(player_y - x) * v_speed * -1
}
*/
timer++
if timer >= 50{
instance_create_layer(x,y,"instances",oBullet)
timer = 0
}