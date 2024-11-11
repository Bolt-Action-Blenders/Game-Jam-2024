/// @description Insert description here
// You can write your code in this editor
// Draw event for obj_player or other objects in the room
draw_set_color(c_gray);
draw_set_alpha(0.5);  // Set a semi-transparent grey
draw_self();  // Draw the object with the grey tint
draw_set_alpha(1);  // Reset alpha to fully opaque