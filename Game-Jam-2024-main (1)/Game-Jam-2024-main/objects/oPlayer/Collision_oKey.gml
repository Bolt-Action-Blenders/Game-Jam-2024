if (place_meeting(x, y, oKey)) {
key++;
        with (instance_place(x, y, oKey)) {
            instance_destroy();
        }
}