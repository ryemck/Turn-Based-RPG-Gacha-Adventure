
//re-activates all the instances that were hidden when paused
var i;
for(i = 0; i < ds_list_size(global.pauseInstances); i++)
    instance_activate_object(global.pauseInstances[| i]);
ds_list_destroy(global.pauseInstances);

instance_destroy(obj_Button_BackToGame);
instance_destroy(obj_Button_BackToMainMenu);
instance_destroy(obj_Button_Save);
instance_destroy(obj_PauseMenu);
instance_destroy();

