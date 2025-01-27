instances = ds_list_create();

var i;
with(all)
    ds_list_add(other.instances, id);
    
ase = application_surface_is_enabled();
if(!ase)
    application_surface_enable(true);
    
background = background_create_from_surface(application_surface, 0, 0, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ), false, false);
application_surface_enable(ase);
instance_deactivate_all(true);

