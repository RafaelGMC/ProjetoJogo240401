resolution_width = 1280;
resolution_height = 720;
resolution_scale = 3;

global.view_width = resolution_width / resolution_scale;
global.view_height = resolution_height / resolution_scale;

view_target = obj_player;
view_spd = 0.1;

window_set_size(global.view_width * resolution_scale,global.view_height * resolution_scale);

surface_resize(application_surface,global.view_width * resolution_scale,global.view_height * resolution_scale);


alarm[0] = 1;
