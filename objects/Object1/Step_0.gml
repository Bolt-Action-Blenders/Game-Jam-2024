/// @description Insert description here
// You can write your code in this editor

rightkey = keyboard_check(vk_right);
leftkey = keyboard_check(vk_left);
upkey = keyboard_check(vk_up);
downkey = keyboard_check(vk_down);
xspd = (rightkey - leftkey)*movespd
yspd = (downkey-upkey)*movespd+0.1
hspd = (hspd + xspd)
vspd = (vspd + yspd)
if xspd == 0{hspd*=0.97}
if yspd == 0{vspd*=0.97}
if place_meeting(x+hspd,y,Object2){
   hspd *= -0.4 
}
if place_meeting(x,y+vspd,Object2){
   vspd *= -0.4
}
global.shoot =point_direction(x,y,mouse_x,mouse_y)-15
if mouse_check_button_pressed(mb_left){instance_create_layer(x,y,"instances",Object3)}
global.shoot =point_direction(x,y,mouse_x,mouse_y)+15
if mouse_check_button_pressed(mb_left){instance_create_layer(x,y,"instances",Object3)}
global.shoot =point_direction(x,y,mouse_x,mouse_y)
if mouse_check_button_pressed(mb_left){instance_create_layer(x,y,"instances",Object3)}
x += hspd;
y +=vspd;