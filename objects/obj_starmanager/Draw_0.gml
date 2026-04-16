if(global.generatestars == 1){
for (var i = 0; i < global.staramount; i++) {
    var _x = random_range(_cam_x, _cam_x + _cam_w);
    var _y = random_range(_cam_y, _cam_y + _cam_h);

    layer_sprite_create(_layer_id, _x, _y, spr_star);
}
global.generatestars = 0;
}