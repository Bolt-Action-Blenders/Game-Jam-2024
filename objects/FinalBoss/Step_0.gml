if (demonHealth <= 0) {
    instance_destroy(); // Destroy this instance of the enemy
    return; // Exit the current logic since the enemy is destroyed
}

var player_x = oPlayer.x;
var player_y = oPlayer.y;
if (demonHealth > fullhealth / 2){
// Player's position
move_towards_point(player_x, player_y, walkspeed);

    var demon_cooldown_time = 5; 
    if (global.time - last_action_time >= demon_cooldown_time) {
        last_action_time = global.time;
		instance_create_depth(x, y, 0, oDemonGun);
    }

}
if (demonHealth <= fullhealth / 2){
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
    var demon_cooldown_time = 5; 
    if (global.time - last_action_time >= demon_cooldown_time) {
        last_action_time = global.time;
		instance_create_depth(x, y, 0, oDemonRegular);
    }
}

