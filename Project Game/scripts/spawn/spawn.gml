/// @desc  Function for delayed spawning objects
/// @param {array} _obj_array [[t,x,y,obj,{}]]
function spawn_obj(_obj_array){
	var _temp = [];
	array_sort(_obj_array, function(e1, e2){return e1[0] > e2[0]});
	if instance_nearest(0,0,oSpawnData) < 0{
		instance_create_depth(0,0,10,oSpawnData,{data: _obj_array});
	}
	else {
		_temp = array_concat(instance_nearest(0,0,oSpawnData).data, _obj_array)
		array_sort(_temp, function(e1, e2){return e1[0] > e2[0]});
		instance_nearest(0,0,oSpawnData).data = _temp;
	}
	if array_length(instance_nearest(0,0,oSpawnData).last) = 0
		instance_nearest(0,0,oSpawnData).last = [_obj_array[0][0], call_later(_obj_array[0][0],time_source_units_seconds,spawn)];
	else if instance_nearest(0,0,oSpawnData).last[0] > _temp[0][0]{
		instance_nearest(0,0,oSpawnData).last[0] = _temp[0][0];
		call_cancel(instance_nearest(0,0,oSpawnData).last[1]);
		instance_nearest(0,0,oSpawnData).last[1] = call_later(instance_nearest(0,0,oSpawnData).last[0], time_source_units_seconds, spawn);
	}

}

/// @desc  Function that executes delayed spawn recursively
function spawn(){
	var _temp = instance_nearest(0,0,oSpawnData).data;
	_convert_time(_temp);
	instance_nearest(0,0,oSpawnData).data = _temp;
	if(array_length(_temp[0]) == 5)
	{
		instance_create_depth(_temp[0][1],_temp[0][2],10,_temp[0][3],_temp[0][4])
	}	
	else{
		instance_create_depth(_temp[0][1],_temp[0][2],10,_temp[0][3]);
	}
	array_delete(_temp, 0, 1);
	if array_length(_temp) = 0
		return;
	call_later(_temp[0][0], time_source_units_seconds, spawn);
}

/// @desc Converts time to relative
/// @param {array} _obj_array [[t,x,y,obj,{}]]
function _convert_time(_obj_array){
	for(var i = 1; i<array_length(_obj_array); i++)
	{
		_obj_array[i][0] -= _obj_array[i-1][0];
	}
}


/// @desc Function for delayed spawning bullets
/// @param {array} _bull_array [[t,x,y,angle*,speed*,damage*]]
function spawn_bullet(_bull_array){
	spawn_obj(structurize_input_spawn(_bull_array, oBullet));
}

/// @desc Function for delayed spawning Big Bullets
/// @param {array} _bull_array [[t,x,y,angle*,speed*,damage*]]
function spawn_big_bullet(_bull_array){
	spawn_obj(structurize_input_spawn(_bull_array, oBigBullet));
}

/// @desc Function for structurizing user input for spawning
/// @param {array} _bull_array [[t,x,y,angle*,speed*,damage*]]
/// @param {obj} _object object for spawning
/// @param {array} _params_array array with params for certain obj
function structurize_input_spawn(_bull_array, _object , _params_array=[["image_angle", function(a){return a - 90}],"speed","damage"]){
var _temp_array = [];
	for(var i = 0; i<array_length(_bull_array); i++){
		_temp_array[i] = [];
		array_copy(_temp_array[i], 0, _bull_array[i], 0, 4);
		_temp_array[i][array_length(_temp_array[i])-1] = _object;
		_temp_array[i][array_length(_temp_array[i])] = {};
		for(var j = 0; j<array_length(_bull_array[i])-3; j++){
			if typeof(_params_array[j]) == "array"
				_temp_array[i][array_length(_temp_array[i])-1][$ _params_array[j][0]] = _params_array[j][1](_bull_array[i][j+3]);
			else
				_temp_array[i][array_length(_temp_array[i])-1][$ _params_array[j]] = _bull_array[i][j+3];
		}
	}
	return _temp_array;
}