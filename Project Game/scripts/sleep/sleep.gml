// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function sleep(ms){
	var _s = ms*1000; //this is in microseconds (1 millionth of a second)
	var _findtime=get_timer()+_s;
	while(_findtime<get_timer()){};
}