// 1. Increment timer
if (timer == undefined) timer = 0; // Safety check
timer++;

// 2. Run every 20 frames
if (timer >= 20) {
    timer = 0;

    // First, wake everything up so we can re-evaluate
    instance_activate_all();

    // Define the "Safe Zone" around the player
    var _range_w = 1200; // Adjust based on your screen width
    var _range_h = 800;  // Adjust based on your screen height
    var _fall_buffer = 1500; // BIG buffer below for falling

    // Deactivate everything OUTSIDE this rectangle around the player
    instance_deactivate_region(
        obj_player.x - _range_w, 
        obj_player.y - _range_h, 
        _range_w * 2, 
        (_range_h * 2) + _fall_buffer, 
        false, 
        true
    );

    // Force these to stay awake no matter what
    instance_activate_object(obj_player);
    instance_activate_object(obj_system); 
    
    // Debug Message - Look at the "Output" window at the bottom of GameMaker!
    show_debug_message("ACTIVE COUNT: " + string(instance_count));
}