var object_list = [oDemonFast, oDemonGun, oDemonDemo, oDemonPyro, oDemonJuggernaut, oDemonRegular, 
                   oDemonRobot, oDemonShotgun, oDemonWorker, oShitDemon, oShitToilet, oSummoner, oFinalBoss];

// Loop through each object in the list
for (var i = 0; i < array_length_1d(object_list); i++) {
    var current_object = object_list[i];  // Get the current object from the list

    // Check if lysol collides with the current object in the list
    if (place_meeting(lysol.x, lysol.y, current_object)) {
        // If collision is detected, perform the desired action
        show_message("Lysol has collided with " + string(current_object));
        // You can add any other behavior you want here, like triggering damage, effects, etc.
        break;  // Exit the loop after detecting the first collision (optional)
    }
}