if (!instance_exists(oPlayer)) {
    return; // Exit the event if oPlayer doesn't exist
}
image_xscale=4
image_yscale=4

if (distance_to_object(oPlayer) <= 100) {
				var teleport = false;
				while (!teleport){
				x = oPlayer.x + (irandom_range(-3,7) -2) * 1000
				y = oPlayer.y + (irandom_range(1, 3)-2) * 1000
				if (x != oPlayer.x && y != oPlayer.y && place_meeting(x, y, oFloor) && !place_meeting(x, y, oWall)){
				teleport = true;
				}
				}
}