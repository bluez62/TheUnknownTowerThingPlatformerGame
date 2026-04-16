// Get the ID of the Asset Layer
var _layer_id = layer_get_id("stars");
global.staramount = 20;
global.generatestars = 0;
// Create multiple random sprites
// 1. Get the camera's current position and size
var _cam    = view_camera[0];
var _cam_x  = camera_get_view_x(_cam);
var _cam_y  = camera_get_view_y(_cam);
var _cam_w  = camera_get_view_width(_cam);
var _cam_h  = camera_get_view_height(_cam);

// 2. Loop and spawn within those specific bounds
if(global.generatestars == 1){
for (var i = 0; i < global.staramount; i++) {
    var _x = random_range(_cam_x, _cam_x + _cam_w);
    var _y = random_range(_cam_y, _cam_y + _cam_h);

    layer_sprite_create(_layer_id, _x, _y, spr_star);
}
global.generatestars = 0;
}