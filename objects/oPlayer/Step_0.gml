var last_action_time;

direction = point_direction(x, y, mouse_x, mouse_y);

// Horizontal movement (left and right)
if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
			show_debug_message("Move");
    h_speed = -move_speed;
} else if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
			show_debug_message("Move");
    h_speed = move_speed;
} else {
    h_speed = 0;
}

// Vertical movement (up and down)
if (keyboard_check(vk_up) || keyboard_check(ord("W"))){
    v_speed = -move_speed;
} else if (keyboard_check(vk_down) || keyboard_check(ord("S"))){
    v_speed = move_speed
} else {
    v_speed = 0;
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

if (place_meeting(x, y + v_speed, oWall) || place_meeting(x, y + v_speed, oLockedDoor)) {
	v_speed = 0;

}
if (place_meeting( x + h_speed, y, oWall) || place_meeting(x + h_speed, y, oLockedDoor)) {
	h_speed = 0;
}
if (place_meeting(x, y, oTrap)) {
	if (global.time - last_action_time >= cooldown_time) {
		last_action_time = global.time;
    health -= oTrap.damage;
	}}
	if (h_speed > max_speed){
	h_speed = max_speed
	}
	if (v_speed > max_speed){
	v_speed = max_speed
	}
	x += h_speed;
	y += v_speed;