var i;
for(i = 0; i < ds_list_size(instances); i++)
    instance_activate_object(instances[| i]);
ds_list_destroy(instances);
background_delete(background);
instance_destroy();

