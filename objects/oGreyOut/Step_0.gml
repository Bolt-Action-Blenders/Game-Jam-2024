/// @description Insert description here
// You can write your code in this editor
// Draw event for obj_grey_overlay
draw_set_color(c_gray);    // Set the color to grey
draw_set_alpha(overlay_alpha);  // Set the transparency (alpha)

// Draw a rectangle covering the entire screen (assuming the room is the entire screen size)
draw_rectangle(0, 0, room_width, room_height, false);

// Reset alpha back to 1 (fully opaque) after drawing
draw_set_alpha(1);