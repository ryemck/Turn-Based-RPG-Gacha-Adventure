//check for input from WASD
_hor = (keyboard_check(ord("D")) -keyboard_check(ord("A")) );
_ver = (keyboard_check(ord("S")) -keyboard_check(ord("W")) );
move_and_collide(_hor * move_speed, _ver * move_speed, objectsToCollide, undefined, undefined, undefined, move_speed, move_speed); 

if (_hor !=0 or _ver !=0) {
        if (_hor > 0) sprite_index = sp_Player_Walk; 
        else if (_hor < 0) sprite_index = sp_Player_Walk_Left; 
            
        facing = point_direction(0, 0, _hor, 0);
        
}else{
    
    if (sprite_index == sp_Player_Walk || sprite_index == sp_Player_Run){
        image_index = 0;
    sprite_index = sp_Player_Idle;
    }
    else if (sprite_index == sp_Player_Walk_Left || sprite_index == sp_Player_Run_Left) {
        image_index = 0;
        sprite_index = sp_Player_Idle_Left;
    }
    
}

