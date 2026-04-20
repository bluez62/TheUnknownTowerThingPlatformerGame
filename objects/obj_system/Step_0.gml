if (timer == undefined) timer = 0;
timer++;
if (timer >= 20) {
    timer = 0;
    instance_activate_all();
    var _range_w = 1200;
    var _range_h = 600;
    var _fall_buffer = 2;
    instance_deactivate_region(
        obj_player.x - _range_w, 
        obj_player.y - _range_h, 
        _range_w * 2, 
        (_range_h * 2) + _fall_buffer, 
        false, 
        true
    );
    instance_activate_object(obj_player);
    instance_activate_object(obj_system); 
    show_debug_message("ACTIVE COUNT: " + string(instance_count));
}