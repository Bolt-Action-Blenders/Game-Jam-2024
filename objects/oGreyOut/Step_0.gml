// Set the camera's target position (player's position)
var target_x = oPlayer.x;
var target_y = oPlayer.y;

// Optional: Adjust the camera's speed for smooth movement
var lerp_speed = 0.1;

// Lerp (smooth) the camera towards the player's position
view_xview[0] = lerp(view_xview[0], target_x - room_width / 2, lerp_speed);
view_yview[0] = lerp(view_yview[0], target_y - room_height / 2, lerp_speed);

// Calculate desired camera position
var desired_x = target_x - room_width / 2;
var desired_y = target_y - room_height / 2;

// Apply smooth camera follow
view_xview[0] = lerp(view_xview[0], desired_x, lerp_speed);
view_yview[0] = lerp(view_yview[0], desired_y, lerp_speed);

// Camera bounds check (optional)
view_xview[0] = clamp(view_xview[0], 0, room_width - view_wview[0]);
view_yview[0] = clamp(view_yview[0], 0, room_height - view_hview[0]);