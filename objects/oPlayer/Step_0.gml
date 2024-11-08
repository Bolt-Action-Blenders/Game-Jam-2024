var key_left = keyboard_check(vk_left)
var key_right = keyboard_check(vk_right)
var key_up = keyboard_check(vk_up)
var key_down = keyboard_check(vk_down)
var last_action_time = 0; // last time action was performed
var move = key_right - key_left;
var move2 =  key_up - key_down  ;
global.time++
hsp = move * walksp;
vsp = move2	 * walksp * -1;

if (place_meeting(x, y + vsp, oWall) || !place_meeting(x, y + vsp, oLockedDoor)) {
	vsp = 0
}
if (place_meeting( x +hsp, y, oWall) || !place_meeting(x + hsp, y, oLockedDoor)) {
	hsp = 0;
}
if (place_meeting(x, y, oTrap)) {
	if (global.time - last_action_time >= cooldown_time) {
		last_action_time = global.time;
    health -= oTrap.damage;
	}}
	x += hsp;
	y += vsp;