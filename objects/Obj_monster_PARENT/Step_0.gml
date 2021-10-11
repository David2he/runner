if(!is_close_to_player){
	x -= 4;
	sprite_index = running_sprite;
}else if (!is_dead){
	sprite_index = idle_sprite;
	if(!is_blocking){
		alarm[0] = 1;
	}
}

if(hitted){
	color_blend = c_red;
	hitted = false;
	alarm[1] = room_speed * 0.15;
	sprite_index = hited_sprite;
}

if(sprite_index == hited_sprite){
	if(image_index >= image_number - 1){
		sprite_index = idle_sprite
	}
}

if(is_dead){
	
	Obj_create_loots.ammount_of_gold = irandom_range(20, 30);
	Obj_create_loots.x_monster = x;
	Obj_create_loots.y_monster = y;
	Obj_create_loots.alarm[0] = 1;
	monster_dead = instance_create_depth(x,y,depth, Obj_dead_sprite)
	monster_dead.sprite_index = dead_sprite
	
	if(is_close_to_player){
		Obj_pj.count_enemies_cac --;
	}
	Obj_pj.alternate_att_run = !Obj_pj.alternate_att_run;
	is_dead = !is_dead;
	instance_destroy();

}

image_xscale = 	global.scale_ratio;
image_yscale = global.scale_ratio;

y = global.flor;
