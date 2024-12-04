if (!instance_exists(oPlayer)) {
    return; // Exit the event if oPlayer doesn't exist
}
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

if (demonHealth >= maxHealth / 2) {
move_towards_point(player_x, player_y, walksp); } else {walksp = 0}
show_debug_message(walksp)


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
	
	    var demon_cooldown_time = 5; 
    if (global.time - last_action_time >= demon_cooldown_time) {
        last_action_time = global.time;
			if (demonHealth < maxHealth / 2){
				var teleport = false;
				while (!teleport){
				x = oPlayer.x + (irandom_range(1,3) -2) * 100
				y = oPlayer.y + (irandom_range(1, 3)-2) * 100
				if (x != player_x && y != player_y && place_meeting(x, y, oFloor) && !place_meeting(x, y, oWall)){
				teleport = true;
				projID = irandom_range(1,3)
				alarm[0]=fps/4
				}
				}
				walksp = 0;
				move_towards_point(x, y, 0)
    }
	}
			    if (global.time - last_bullet_time >= demon_cooldown_time/3 && demonHealth < maxHealth / 2) {
				last_bullet_time = global.time
				if (projID = 3){
					global.point = point_direction(x,y,oPlayer.x,oPlayer.y)-15
instance_create_layer(x,y,"instances",oFire)
	global.point = point_direction(x,y,oPlayer.x,oPlayer.y)+15
instance_create_layer(x,y,"instances",oFire)
	global.point = point_direction(x,y,oPlayer.x,oPlayer.y)
instance_create_layer(x,y,"instances",oFire)
audio_play_sound(flamethrower, 1, false)
				}	if (projID = 1){
						instance_create_depth(x,y, 1, oBullet)
							instance_create_depth(x,y, 1, oBullet)
				}
				if (projID = 2){
						instance_create_depth(x,y, 1, oGrenade)
				}
		walksp = 0;
						move_towards_point(x, y, 0)
			}