key_left = key_check(vk_left)
key_right = key_check(vk_right)
key_up = key_check(vk_up)
key_down = key_check(vk_down)

move = key_right - key_left;

hsp = move * walksp;

x += sign(hsp);

move = key_up - key_down;

vsp = move * walksp;

y += sign(vsp);

if (!place_meeting(x, y + 1, oWall)) {
    vsp = 1;
} else {
    vsp = 0;
}
if (!place_meeting(x+1 ,y, oWall)) {
    hsp = 1;
} else {
    hsp = 0;
}