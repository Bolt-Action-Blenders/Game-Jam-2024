var key_left = key_check(vk_left)
var key_right = key_check(vk_right)
var key_up = key_check(vk_up)
var key_down = key_check(vk_down)
var last_action_time = 0; // last time action was performed
var move = key_right - key_left;

hsp = move * walksp;

x += sign(hsp);
 
move = key_up - key_down;

vsp = move * walksp;

y += sign(vsp);

if (!place_meeting(x, y + 1, oWall) || !place_meeting(x, y + 1, oLockedDoor)) {
    vsp = 1;
} else {
    vsp = 0;
}
if (!place_meeting(x, y + 1, oWall) || !place_meeting(x, y + 1, oLockedDoor)) {
    hsp = 1;
} else {
    hsp = 0;
}
if (place_meeting(x, y + 1, oTrap) || !place_meeting(x, y + 1, oTrap)) {
	if (global.time - last_action_time >= cooldown_time) {
		last_action_time = global.time;
    health -= oTrap.damage;
	}}