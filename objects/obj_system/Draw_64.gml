if(global.devmode == 1){
draw_set_color(c_white);
draw_text(10, 10, "Active Instances: " + string(instance_count));
draw_text(10, 20, "FPS: " + string(fps_real));
}