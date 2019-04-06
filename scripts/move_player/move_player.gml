key_right = keyboard_check(vk_right);
key_left = keyboard_check(vk_left);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);

hspeed = key_right-key_left;
vspeed = key_down-key_up;
hspeed *= move_speed;
vspeed *= move_speed;


//collision checking (if true, set move to 0)
if (place_meeting(x+hspeed,y,obj_wall_parent)) {
	
	while !place_meeting(x+sign(hspeed),y,obj_wall_parent) {
		
		x += sign(hspeed);
		
    }
	hspeed = 0;
	
}

if (place_meeting(x,y+vspeed,obj_wall_parent)) {

	while !place_meeting(x,y+sign(vspeed), obj_wall_parent) {
	
		y+= sign(vspeed);
	
	}
	vspeed = 0;

}


