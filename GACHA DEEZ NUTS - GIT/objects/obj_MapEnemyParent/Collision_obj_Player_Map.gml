//creates global variable to match the name of the object
global.enemy1name = object_get_name(object_index);
global.enemy1id = asset_get_index(global.enemy1name + "_Battle");


//redirects to the battle room
room_goto(rm_Battle);