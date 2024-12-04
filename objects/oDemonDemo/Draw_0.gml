draw_self();
draw_sprite_ext(
    sDemo,   // The sprite to draw
    0,    // The current frame of the sprite
    x,              // X position
    y,              // Y position
    4,              // Horizontal scale (4x size)
    4,              // Vertical scale (4x size)
    0,    // Rotation angle (if any)
    c_white,        // Color blend (default: white for no tint)
    1               // Alpha (opacity: 1 for fully visible)
);