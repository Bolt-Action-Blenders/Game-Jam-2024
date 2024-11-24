if (mouse_x >= x - sprite_width  && mouse_x <= x + sprite_width  &&
    mouse_y >= y - sprite_height  && mouse_y <= y + sprite_height ) {

    // Check if the left mouse button was clicked
    if (mouse_check_button_pressed(mb_left)) {
        // Action when object is clicked
		show_debug_message("clicked")
	global.i++
if global.i == 3 {global.i = 0}
sprite_index = say[global.i]
    }
}