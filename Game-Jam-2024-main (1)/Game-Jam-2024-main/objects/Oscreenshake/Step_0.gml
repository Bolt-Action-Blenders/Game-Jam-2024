/// @description Insert description here
// You can write your code in this editor
// In the Step event of the controller object
if (shake_timer > 0)
{
    // Apply a random offset for the shake
    shake_offset_x = random_range(-shake_intensity, shake_intensity);
    shake_offset_y = random_range(-shake_intensity, shake_intensity);
    
    // Reduce the shake intensity over time (optional)
    shake_intensity *= 0.9;  // Damp the intensity over time
    
    // Decrease the shake timer
    shake_timer -= 1;
}
else
{
    // Reset the shake offsets when the shake is over
    shake_offset_x = 0;
    shake_offset_y = 0;
}
