//get inputs
rightKey = keyboard_check(ord("D"));
leftKey = keyboard_check(ord("A"));
jumpKey = keyboard_check_pressed(vk_space);
sprintKey = keyboard_check(vk_shift);
megaJumpKey = keyboard_check(vk_control);


var _fric = 1;
if (place_meeting(x, y + 1, obj_ice)) { 
    _fric = 0.03;
	slip_timer = 40;
} else {
	slip_timer = max(0, slip_timer - 1);
}

if(slip_timer > 0){
	_fric = 0.04;
} else if (!place_meeting(x, y + 1, obj_wall_parent)) {
    _fric = 1; // Normal air resistance
}

var _target_xspd = (rightKey - leftKey) * moveSpd;

xspd = lerp(xspd, _target_xspd, _fric);

yspd += grav;
target_xspd = (rightKey - leftKey) * moveSpd;


function increase2(){
	alphaamount2 += incamount2;
	var text_idfive = layer_text_get_id("windywoods", "wastelandid");
	layer_text_alpha(text_idfive, alphaamount2);
	call_later(0.01, time_source_units_seconds, function() {
		increase2();
	});
}


if (jumpKey && coyote_timer > 0) {
    yspd = jumpSpd;
    coyote_timer = 0.5; 
}


if place_meeting(x, y+1, obj_wall_parent){
	coyote_timer = coyote_max;
	if(!place_meeting(x, y+1, obj_ice)){
		slip_timer = 0;
	}
} else {
	coyote_timer = max(0, coyote_timer - 1);
}
if sprintKey{
moveSpd = 3.5;
} else{
moveSpd = 2;
}
if megaJumpKey{
jumpSpd = -5;
} else{
jumpSpd = -4;
}

show_debug_message(global.roomnumber)

//collision
if place_meeting(x + xspd, y, obj_wall_parent){
	var _pixelCheck = sign(xspd);
	while !place_meeting(x + _pixelCheck, y, obj_wall_parent){
	x += _pixelCheck;
	}
	xspd = 0;
}
if place_meeting(x + xspd, y + yspd, obj_wall_parent){
	var _pixelCheck = sign(yspd);
	while !place_meeting(x + xspd, y + _pixelCheck, obj_wall_parent){
		y += _pixelCheck;
	}
	yspd = 0;
}
if (place_meeting(x, y, obj_roomtransup)) {
    if (!is_colliding) {
		if(global.roomnumber == 1){
		var _cam = view_camera[0];
		global.roomnumber += 1;
var _x = camera_get_view_x(_cam);
var _y = camera_get_view_y(_cam);
_y -= 180
camera_set_view_pos(_cam, _x, _y);
layer_set_visible("cooleffects", false);
call_later(0.5, time_source_units_seconds, function() {
	layer_set_visible("cooleffects", true);
});
global.generatestars = 1;

        is_colliding = true;
    }
} else {
    is_colliding = false;
}
}

if (place_meeting(x, y, obj_roomtransdown)) {
    if (!is_colliding) {
		if(global.roomnumber == 2){
		var _cam = view_camera[0];
var _x = camera_get_view_x(_cam);
var _y = camera_get_view_y(_cam);
global.roomnumber -= 1;
_y += 180
camera_set_view_pos(_cam, _x, _y);
layer_set_visible("cooleffects", false);
call_later(0.5, time_source_units_seconds, function() {
	layer_set_visible("cooleffects", true);
});
global.generatestars = 1;

        is_colliding = true;
    }
} else {
    is_colliding = false;
}
}



if (place_meeting(x, y, obj_roomtransup_2)) {
    if (!is_colliding) {
		if(global.roomnumber == 2){
		var _cam = view_camera[0];
		global.roomnumber += 1;
var _x = camera_get_view_x(_cam);
var _y = camera_get_view_y(_cam);
_y -= 180
camera_set_view_pos(_cam, _x, _y);
layer_set_visible("cooleffects", false);
call_later(0.5, time_source_units_seconds, function() {
	layer_set_visible("cooleffects", true);
});
global.generatestars = 1;

        is_colliding = true;
    }
} else {
    is_colliding = false;
}
}

if (place_meeting(x, y, obj_roomtransdown_2)) {
    if (!is_colliding) {
		if(global.roomnumber == 3){
		var _cam = view_camera[0];
var _x = camera_get_view_x(_cam);
var _y = camera_get_view_y(_cam);
global.roomnumber -= 1;
_y += 180
camera_set_view_pos(_cam, _x, _y);
layer_set_visible("cooleffects", false);
call_later(0.5, time_source_units_seconds, function() {
	layer_set_visible("cooleffects", true);
});
global.generatestars = 1;

        is_colliding = true;
    }
} else {
    is_colliding = false;
}
}


if (place_meeting(x, y, obj_roomtransup_3)) {
    if (!is_colliding) {
		if(global.roomnumber == 3){
		var _cam = view_camera[0];
		global.roomnumber += 1;
var _x = camera_get_view_x(_cam);
var _y = camera_get_view_y(_cam);
_y -= 180
camera_set_view_pos(_cam, _x, _y);
layer_set_visible("cooleffects", false);
call_later(0.5, time_source_units_seconds, function() {
	layer_set_visible("cooleffects", true);
});
global.generatestars = 1;

        is_colliding = true;
    }
} else {
    is_colliding = false;
}
}

if (place_meeting(x, y, obj_roomtransdown_3)) {
    if (!is_colliding) {
		if(global.roomnumber == 4){
		var _cam = view_camera[0];
var _x = camera_get_view_x(_cam);
var _y = camera_get_view_y(_cam);
global.roomnumber -= 1;
_y += 180
camera_set_view_pos(_cam, _x, _y);
layer_set_visible("cooleffects", false);
call_later(0.5, time_source_units_seconds, function() {
	layer_set_visible("cooleffects", true);
});
global.generatestars = 1;

        is_colliding = true;
    }
} else {
    is_colliding = false;
}
}


if (place_meeting(x, y, obj_roomtransup_4)) {
    if (!is_colliding) {
		if(global.roomnumber == 4){
		var _cam = view_camera[0];
		global.roomnumber += 1;
var _x = camera_get_view_x(_cam);
var _y = camera_get_view_y(_cam);
_y -= 180
camera_set_view_pos(_cam, _x, _y);
layer_set_visible("cooleffects", false);
call_later(0.5, time_source_units_seconds, function() {
	layer_set_visible("cooleffects", true);
});
global.generatestars = 1;

        is_colliding = true;
    }
} else {
    is_colliding = false;
}
}

if (place_meeting(x, y, obj_roomtransdown_4)) {
    if (!is_colliding) {
		if(global.roomnumber == 5){
		var _cam = view_camera[0];
var _x = camera_get_view_x(_cam);
var _y = camera_get_view_y(_cam);
global.roomnumber -= 1;
_y += 180
camera_set_view_pos(_cam, _x, _y);
layer_set_visible("cooleffects", false);
call_later(0.5, time_source_units_seconds, function() {
	layer_set_visible("cooleffects", true);
});
global.generatestars = 1;

        is_colliding = true;
    }
} else {
    is_colliding = false;
}
}


if (place_meeting(x, y, obj_roomtransup_5)) {
    if (!is_colliding) {
		if(global.roomnumber == 5){
		var _cam = view_camera[0];
		global.roomnumber += 1;
var _x = camera_get_view_x(_cam);
var _y = camera_get_view_y(_cam);
_y -= 180
camera_set_view_pos(_cam, _x, _y);
layer_set_visible("cooleffects", false);
call_later(0.5, time_source_units_seconds, function() {
	layer_set_visible("cooleffects", true);
});
global.generatestars = 1;

        is_colliding = true;
    }
} else {
    is_colliding = false;
}
}

if (place_meeting(x, y, obj_roomtransdown_5)) {
    if (!is_colliding) {
		if(global.roomnumber == 6){
		var lay_id5 = layer_get_id("cooleffects");
		layer_set_visible(lay_id5, true);
		var _cam = view_camera[0];
var _x = camera_get_view_x(_cam);
var _y = camera_get_view_y(_cam);
global.roomnumber -= 1;
_y += 180
camera_set_view_pos(_cam, _x, _y);
layer_set_visible("cooleffects", false);
call_later(0.5, time_source_units_seconds, function() {
	layer_set_visible("cooleffects", true);
});
global.generatestars = 1;

        is_colliding = true;
    }
} else {
    is_colliding = false;
}
}


if (place_meeting(x, y, obj_roomtransup_6)) {
    if (!is_colliding) {
		if(global.roomnumber == 6){
		var lay_id5 = layer_get_id("cooleffects");
		layer_enable_fx(lay_id5, false);
		if(enteredwasteland == 0){
			increase2();
		}
		enteredwasteland = 1;
		var _cam = view_camera[0];
		global.roomnumber += 1;
		audio_play_sound(mus_wasteland, 1, true);
		audio_stop_sound(mus_windy_woods);
var _x = camera_get_view_x(_cam);
var _y = camera_get_view_y(_cam);
_y -= 180
camera_set_view_pos(_cam, _x, _y);
layer_set_visible("cooleffects", false);
call_later(0.5, time_source_units_seconds, function() {
	layer_set_visible("cooleffects", true);
});
call_later(3, time_source_units_seconds, function() {
	incamount2 = -0.007;
	call_later(3, time_source_units_seconds, function() {
		stillinc2 = 0;
	});
});
global.generatestars = 1;

        is_colliding = true
    }
} else {
    is_colliding = false;
}
}

if (place_meeting(x, y, obj_roomtransdown_6)) {
    if (!is_colliding) {
		if(global.roomnumber == 7){
		var lay_id5 = layer_get_id("cooleffects");
		layer_enable_fx(lay_id5, true);
		var _cam = view_camera[0];
		audio_stop_sound(mus_wasteland);
		audio_play_sound(mus_windy_woods, 1, true);
var _x = camera_get_view_x(_cam);
var _y = camera_get_view_y(_cam);
global.roomnumber -= 1;
_y += 180
camera_set_view_pos(_cam, _x, _y);
layer_set_visible("cooleffects", false);
call_later(0.5, time_source_units_seconds, function() {
	layer_set_visible("cooleffects", true);
});
global.generatestars = 1;

        is_colliding = true;
    }
} else {
    is_colliding = false;
}
}


if(place_meeting(x, y, obj_bobarea)){
	if(global.bob = 0){
		global.secretcubes += 1;
		global.bob = 1;
		obj_bob.image_alpha = 1;
		var text_idtwo = layer_text_get_id("text_and_things", "bobtext");
		layer_text_alpha(text_idtwo, 1);
}
}


x += xspd;
y += yspd;