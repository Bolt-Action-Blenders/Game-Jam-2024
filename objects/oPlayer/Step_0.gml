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


if (!place_meeting(x, y + vsp, oWall) || !place_meeting(x, y + 1, oLockedDoor)) {
			
					y += vsp;
   
} else {
	
}
if (!place_meeting(x, y + 1, oWall) || !place_meeting(x, y + 1, oLockedDoor)) {
	
   	x += hsp;
} else {

}
if (place_meeting(x, y + 1, oTrap) || !place_meeting(x, y + 1, oTrap)) {
	if (global.time - last_action_time >= cooldown_time) {
		last_action_time = global.time;
 //   health -= oTrap.damage;
	}}
	x += hsp;
	y += vsp;