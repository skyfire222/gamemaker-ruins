
//set speeds
hspeed = key_right-key_left;
vspeed = key_down-key_up;

// increase speed
hspeed *= move_speed;
vspeed *= move_speed;


//collision checking (if true, set speed to 0)
collision_block();

