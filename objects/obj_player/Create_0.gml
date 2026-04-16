global.devmode = 0;

xspd = 0;
yspd = 0;
coyote_max = 5;
coyote_timer = 0;

moveSpd = 2;
jumpSpd = -4;
grav = 0.2;
is_colliding = false;
alphaamount = 0;
incamount = 0.007;
alphaamount2 = 0;
incamount2 = 0.007;
enteredwasteland = 0;
stillinc = 1;
stillinc2 = 1;
global.roomnumber = 1;
global.bob = 0;
global.secretcubes = 0;
var text_id = layer_text_get_id("windywoods", "maybewindy");
layer_text_alpha(text_id, 0);
var text_idtwo = layer_text_get_id("windywoods", "wastelandid");
layer_text_alpha(text_id, 0);
var text_idthree = layer_text_get_id("text_and_things", "bobtext");
layer_text_alpha(text_idthree, 0);
call_later(0.5, time_source_units_seconds, function() {
	increase()
	call_later(3, time_source_units_seconds, function() {
		incamount = -0.007;
		call_later(3, time_source_units_seconds, function() {
			stillinc = 0;
		});
	});
});
audio_play_sound(mus_windy_woods, 1, true)
function increase(){
	if(stillinc == 1){
	alphaamount += incamount;
	var text_id = layer_text_get_id("windywoods", "maybewindy");
	layer_text_alpha(text_id, alphaamount);
	call_later(0.01, time_source_units_seconds, function() {
		increase();
	});
}
}