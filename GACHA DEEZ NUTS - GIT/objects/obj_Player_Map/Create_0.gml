move_speed = 1;

tilemap = layer_tilemap_get_id("Tiles_Col");

facing = 0;

// sets which objects to collide with
objectsToCollide = [tilemap];

//flag to trigger AP menu draw event when TAB is pressed
apMenu = 0;
