if(global.devmode == 1){
draw_set_color(c_white);
draw_text(10, 10, "Active Instances: " + string(instance_count));
draw_text(10, 20, "FPS: " + string(fps_real));
draw_text(10, 30, "Jumps: " + string(global.jumps));
draw_text(10, 40, "Mega Jumps: " + string(global.megajumps));
draw_text(10, 50, "Falls: " + string(global.falls));
}