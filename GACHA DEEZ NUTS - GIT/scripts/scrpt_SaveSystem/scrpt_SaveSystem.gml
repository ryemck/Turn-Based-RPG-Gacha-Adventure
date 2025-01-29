function scrpt_SaveGame(){
    
    //open the save file
    var _file = file_text_open_write("save.txt");
    
    //struct to save data
    
    var _struct = {
        level: global.playerLevel,
        exp: global.playerExp,
        exp_required: global.playerExpRequired,
        attack: global.playerAttack,
        speed: global.playerSpeed,
        armor: global.playerArmor,
        hp_max: global.playerHP_Max,
        hp_current: global.playerHP_Current,
        passive: global.playerPassive,
        defense: global.playerDefense,
        ap: global.playerAP
    }
    
    //use json to convert data to a script to write to save file
    
    var _string = json_stringify(_struct);
    var _file = file_text_open_write("save.txt");
    
    file_text_write_string(_file, _string);

    //close the save file
    file_text_close(_file);
}

function scrpt_LoadGame(){
   if(file_exists("save.txt")){
    var _file = file_text_open_read("save.txt");
    var _json = file_text_read_string(_file);
    var _array = json_parse(_json);
    var _struct = _array;

    global.playerLevel = _struct.level;
    global.playerExp = _struct.exp;
    global.playerExpRequired = _struct.exp_required;
    global.playerAttack = _struct.attack;
    global.playerSpeed = _struct.speed;
    global.playerArmor = _struct.armor;
    global.playerHP_Max = _struct.hp_max;
    global.playerHP_Current = _struct.hp_current;
    global.playerPassive = _struct.passive;
    global.playerDefense = _struct.defense;
    global.playerAP = _struct.ap;
}
    
    file_text_close(_file);
}