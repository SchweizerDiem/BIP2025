if (obj_pointer.x != obj_btn_hot_level.x){
	obj_pointer.x = x;
	obj_pointer.y = y;
	image_index = 0;
}else{
	room_goto(rm_level_hot);
}