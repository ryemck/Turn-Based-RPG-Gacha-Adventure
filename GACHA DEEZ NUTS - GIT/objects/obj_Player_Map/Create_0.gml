move_speed = global.playerSpeed;
running = 0;
tilemap = layer_tilemap_get_id("Tiles_Col");

facing = 0;

// sets which objects to collide with
objectsToCollide = [tilemap];