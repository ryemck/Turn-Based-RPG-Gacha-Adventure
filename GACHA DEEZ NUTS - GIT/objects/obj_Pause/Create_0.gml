//create list to contain all active instances
global.pauseInstances = ds_list_create();

//add all active instances to list
var i;
with(all)
    ds_list_add(global.pauseInstances, id);
    
//deactivate all active instances
instance_deactivate_all(true);

//gets camera co-ords
vx = camera_get_view_x(view_camera[0]);
vy = camera_get_view_y(view_camera[0]);

//adds buttons

instance_create_depth(vx +15, vy + 30, -250, obj_Button_BackToGame);
instance_create_depth(vx +15, vy + 75, -250, obj_Button_Save);
instance_create_depth(vx +15, vy + 120, -250, obj_Button_BackToMainMenu);
instance_create_depth(vx +135, vy + 23, -250, obj_PauseMenu);