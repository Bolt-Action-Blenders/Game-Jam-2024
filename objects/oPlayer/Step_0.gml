var nextLevel = 100 + 10*level;
global.time += 1/fps
show_debug_message(Playerhealth)
if (experience >= nextLevel){
oPlayer.level++
oPlayer.experience -= nextLevel;
oPlayer.basehealth *= 1.5;
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

// Vertical movement (up and down)
if (keyboard_check(vk_up) || keyboard_check(ord("W"))){
    v_speed = -move_speed;
	sprite_index = playerBackward
} else if (keyboard_check(vk_down) || keyboard_check(ord("S"))){
    v_speed = move_speed
	sprite_index = playerForward
} else {
    v_speed = 0;
}
	// Horizontal movement (left and right)
if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
    h_speed = -move_speed;
	sprite_index = playerLeft
} else if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
    h_speed = move_speed;
	sprite_index = playerRight
} else {
    h_speed = 0;
}
if (h_speed = 0 && v_speed = 0){
	sprite_index = playerIdle
} else {
if (!audio_is_playing(step)) {
	audio_sound_pitch(step, 1.66);
    audio_play_sound(step, 1, false); 
}
}
// Sprint with shift key (only if stamina allows)
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


if (is_burning) {
if (burning_hits >= 0 && burning_hits <= 5 ){
	    var burning_cooldown = 3;

    if (global.time - burning_last_time >= burning_cooldown) {
				burning_hits++;
       Playerhealth -= rangedBaseDamage[2];
        burning_last_time = global.time;
		show_debug_message("it burns spare me pls")
		audio_play_sound(hurt, 1, false)
    }
} else {
is_burning = false;
burning_hits = 0;
}
}
//Poison stuff
var poison_damage = 3;

	// Check if the player or object is poisoned
if (is_poisoned) {
if (poison_hits <= 3){
	    var poison_cooldown = 3; // Set the cooldown time (in frames)
    if (global.time - poison_last_time >= global.time) {
       Playerhealth -= poison_damage
        poison_last_time = global.time;
		poison_hits++;
		show_debug_message("it poisons spare me pls")
		audio_play_sound(hurt, 1, false)
    }
} else {
poison_hits = 0;
is_poisoned = false;
}
}

