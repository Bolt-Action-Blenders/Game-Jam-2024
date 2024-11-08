// Step Event

// Horizontal movement (left and right)
if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
    h_speed = max(h_speed - acceleration, -max_speed);  // Accelerate left
} else if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
    h_speed = min(h_speed + acceleration, max_speed);  // Accelerate right
} else {
    h_speed *= 1 - deceleration;  // Gradually slow down horizontally
}

// Vertical movement (up and down)
if (keyboard_check(vk_up) || keyboard_check(ord("W"))){
    v_speed = max(v_speed - acceleration, -max_speed);  // Accelerate up
} else if (keyboard_check(vk_down) || keyboard_check(ord("S"))){
    v_speed = min(v_speed + acceleration, max_speed);  // Accelerate down
} else {
    v_speed *= 1 - deceleration;  // Gradually slow down vertically
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

// Apply the movement speeds
x += h_speed;
y += v_speed;

if (place_meeting(x, y + vsp, oWall) || place_meeting(x, y + vsp, oLockedDoor)) {
	v_speed = 0;
}
if (place_meeting( x + hsp, y, oWall) || place_meeting(x + hsp, y, oLockedDoor)) {
	h_speed = 0;
}
if (place_meeting(x, y, oTrap)) {
	if (global.time - last_action_time >= cooldown_time) {
		last_action_time = global.time;
    health -= oTrap.damage;
	}}
	x += hsp;
	y += vsp;