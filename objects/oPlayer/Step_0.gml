game_set_speed(60, 60);
oPlayer.health = 100;
var nextLevel = 100 + 10*level;
room_speed = 60;
global.time += 1/fps
show_debug_message(global.time)
if (experience >= nextLevel){
oPlayer.level++
oPlayer.experience -= nextLevel;
oPlayer.baseHealth *= 1.5;
oPlayer.Playerhealth = baseHealth
oPlayer.damage *= 1.5;
oPlayer.stamina *= 1.5
}
if (oPlayer.Playerhealth > oPlayer.baseHealth){
oPlayer.Playerhealth = oPlayer.baseHealth;
}
if oPlayer.Playerhealth <= 0 {
	x = global.revive[0]
	y = global.revive[1]
instance_create_layer(x,y,"instances",object_index)
instance_destroy()
}

direction = point_direction(x, y, mouse_x, mouse_y);
var last_action_time = 0;
var angle = point_direction(x, y, mouse_x, mouse_y);


// Vertical movement (up and down)
if (keyboard_check(vk_up) || keyboard_check(ord("W"))){
    v_speed = -move_speed;
} else if (keyboard_check(vk_down) || keyboard_check(ord("S"))){
    v_speed = move_speed
} else {
    v_speed = 0;
}
	// Horizontal movement (left and right)
if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
    h_speed = -move_speed;
} else if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
    h_speed = move_speed;
} else {
    h_speed = 0;
}
if (h_speed = 0 && v_speed = 0){
// Select the sprite based on the angle
if (angle >= 45 && angle < 135) {
    sprite_index = playerBackward_1; // Facing down
} else if (angle >= 135 && angle < 225) {
    sprite_index = playerLeft_1; // Facing left
} else if (angle >= 225 && angle < 315) {
    sprite_index = playerForward_1; // Facing up
} else {
    sprite_index = playerRight_1; // Facing right
}
} else {
if (!audio_is_playing(step)) {
	audio_sound_pitch(step, 1.66);
    audio_play_sound(step, 1, false); 
}

// Select the sprite based on the angle
if (angle >= 45 && angle < 135) {
    sprite_index = playerBackward; // Facing down
} else if (angle >= 135 && angle < 225) {
    sprite_index = playerLeft; // Facing left
} else if (angle >= 225 && angle < 315) {
    sprite_index = playerForward; // Facing up
} else {
    sprite_index = playerRight; // Facing right
}
}
show_debug_message("Player sprite: " + string(sprite_index));
if (keyboard_check(vk_shift) && stamina > 0) {
    sprinting = true;  // Player is sprinting
    h_speed *= 2;      // Sprint speed multiplier (e.g., 2x)
    v_speed *= 2;
    stamina -= stamina_drain_rate;  // Drain stamina while sprinting
} else {
    sprinting = false; // Player is not sprinting
}

// Regenerate stamina if not sprinting
if (!sprinting && stamina < max_stamina) {
    stamina += stamina_regen_rate;  // Regenerate stamina over time
    stamina = min(stamina, max_stamina);  // Ensure stamina does not exceed max
}

if (place_meeting(x, y + v_speed, oWall) || place_meeting(x, y + v_speed, oLockedDoor)|| place_meeting(x, y + v_speed,Overyscarypitofsadnessanddispair)) {
	v_speed = 0;

}
if (place_meeting( x + h_speed, y, oWall) || place_meeting(x + h_speed, y, oLockedDoor)|| place_meeting(x + h_speed, y,Overyscarypitofsadnessanddispair)) {
	h_speed = 0;
}

if (place_meeting(x, y, oTrap)) {
	if (global.time - last_action_time >= cooldown_time) {
		 last_action_time = global.time;
    health -= 10;
	}}
	if (place_meeting(x, y, oBullet)) {
		 show_debug_message("thhe pain is imesurable")
    health -= 10;
	}
	if (h_speed > max_speed){
	h_speed = max_speed
	}
	if (v_speed > max_speed){
	v_speed = max_speed
	}
	view_yport=y*-1+350
	view_xport=x*-1+700
	x += h_speed;
	y += v_speed;


//burning stuff
var burning_damage = 3;

	// Check if the player or object is burninged

if (global.time - last_splash >= 5){
wet = false;
}
if (wet){
		image_blend = c_aqua; 
		is_burning = false;
		is_poisoned = false;
}
if (is_burning) {
if (burning_hits >= 0 && burning_hits <= 5 ){
	    var burning_cooldown = 3;

    if (global.time - burning_last_time >= burning_cooldown) {
				burning_hits++;
       Playerhealth -= rangedBaseDamage[2];
        burning_last_time = global.time;
		show_debug_message("it burns spare me pls")
		audio_play_sound(hurt, 1, false)
		image_blend = c_red; 
    }
} else {
is_burning = false;
burning_hits = 0;
}
}
if (is_poisoned) {
if (poison_hits >= 0 && poison_hits <= 5 ){
	    var burning_cooldown = 3;

    if (global.time - poison_last_time >= burning_cooldown) {
				poison_hits++;
       Playerhealth -= 10;
        poison_last_time = global.time;
		show_debug_message("it burns spare me pls")
		audio_play_sound(hurt, 1, false)
		image_blend = c_green; 
    }
} else {
is_poisoned = false;
poison_hits = 0;
}
}