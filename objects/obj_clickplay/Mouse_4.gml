room_goto(room_loading)
call_later(1, time_source_units_seconds, function() {
room_goto(room_start);
});