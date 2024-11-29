var object_list = [oDemonFast,oDemonGun,oDemonDemo,oDemonPyro,oDemonJuggernaut,oDemonRegular,oDemonRobot,oDemonShotgun,oDemonWorker,oShitDemon,oShitToilet,oSummoner,oFinalBoss]; // Example objects in the list

// Target object (the one you're checking collisions for)
var target_object = oLycole; // This could be any object you want to check (e.g., player or projectile)

// Loop through the list of objects
for (var i = 0; i <  array_length_1d(object_list); i++) {
    // Get the current object from the list
    var current_object = object_list[i];
    
    // Check if the target object collides with the current object in the list
    if (instance_place(target_object.x, target_object.y, current_object)) {
        // If a collision is detected, you can perform actions here
        show_debug_message("Collision detected between " + string(target_object) + " and " + string(current_object));
        
        // Example: Handle the collision (e.g., reduce health of the target)
        target_object.demonHealth -= 5;
        
        // Optionally: Exit the loop early if you only care about the first collision
		instance_destroy()

    }
}