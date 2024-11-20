/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
// Create an array of object types to check for collision
var object_list = [oDemonGun,oDemonDemo,oDemonFast,oDemonJuggernaut,oDemonPyro,oDemonRegular,oSummoner,oDemonRobot,oDemonScout,oDemonShotgun,oDemonWorker,oShitDemon,oShitToilet,oSpiderFilth];
// Example: Find the closest instance of 'obj_target' with higher x and y coordinates than the current object

// Get the position of the current object (x, y)
var my_x = x;
var my_y = y;

// Initialize variables to keep track of the closest target
var closest_target = noone;
var closest_distance = -1;

// Loop through all instances of 'obj_target'
with (oRoomCheckTop)
{
    // Only consider targets with higher x and y than the current object's position
    if (x > my_x && y > my_y)
    {
        // Calculate the distance between the current object and this target
        var dist = point_distance(my_x, my_y, x, y);
        
        // If this is the first target or it's closer than the previously found target
        if (closest_target == noone || dist < closest_distance)
        {
            closest_target = id;
            closest_distance = dist;
        }
    }
}

// Check if a valid closest target was found
if (closest_target != noone)
{
    // Get the x and y position of the closest target
    var target_x = closest_target.x;
    var target_y = closest_target.y;
    
    // You can do something with the closest object, for example:
    show_message("The closest target is at position (" + string(target_x) + ", " + string(target_y) + ")");
}
else
{
    // No valid target found
    show_message("No valid target found with higher x and y coordinates.");
}
