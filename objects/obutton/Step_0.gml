/// @description Insert description here
// You can write your code in this editor
if (mouse_x >= x - sprite_width  && mouse_x <= x + sprite_width  &&
    mouse_y >= y - sprite_height  && mouse_y <= y + sprite_height ) {

    // Check if the left mouse button was clicked
    if (mouse_check_button_pressed(mb_left)) {
        // Action when object is clicked
		show_debug_message("clicked")
       room = rt0
    }
}