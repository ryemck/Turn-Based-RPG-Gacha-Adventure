//get input

var _left = keyboard_check_pressed(vk_left);
var _right = keyboard_check_pressed(vk_right);
var _select = keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space);

var _move = _right - _left;

if _move != 0{
    //move the index
    index += _move;
    
    //clamp values to prevent going above menu limit
    var _size = array_length_1d(battlemenu);
    if index < 0 index = _size -1; //at start so loop to menu end
    else if index >= _size index = 0; //at the end so loop back to menu start
}

if _select{
    switch(index){
        case 0: 
        attacktype = "melee";
        scrpt_DoDamage();
        //end turn
        scrpt_endPlayerTurn()
        break;
        
        case 1:
        //do stuff
        show_message("Damage increased by 50%!");
        global.playerAttack = global.playerAttack * 1.5;
        //end turn
        scrpt_endPlayerTurn()
        break;
        
        case 2: 
        //do stuff
        attacktype = "ranged";
        instance_create_layer(45, 80, "instances", obj_Attack1);
        scrpt_DoDamage();
        //end turn
        scrpt_endPlayerTurn()
        break;
        
    }
    
}