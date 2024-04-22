/// @description Функции для спавна
function spawn_obj(_obj_array){
	_convert_time(_obj_array);
	instance_create_depth(0,0,10,oSpawnData,{data: _obj_array});
	call_later(_obj_array[0][0],time_source_units_seconds,spawn);
}

function spawn(){
	var _temp = instance_nearest(0,0,oSpawnData).data;
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

function _convert_time(_obj_array){
//Конвертирует время в относительное
	for(var i = 1; i<array_length(_obj_array); i++)
	{
		_obj_array[i][0] -= _obj_array[i-1][0];
	}
}