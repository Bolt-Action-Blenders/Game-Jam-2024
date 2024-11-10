if (place_meeting(x, y, oLockedDoor)) {
key--;
        with (instance_place(x, y, oLockedDoor)) {
            instance_destroy();
        }
}