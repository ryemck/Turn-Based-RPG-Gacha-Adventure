//spawn player_battle to reference the stats. Spawn map player
instance_create_layer(-352, 192, "Instances", obj_Player_Battle);
instance_create_layer(64, 384, "Instances", obj_Player_Map);

//set global variables for player stats, to be used for all rooms, scripts, etc.
if !variable_global_exists("playerLevel")
{
global.playerLevel = obj_Player_Battle.level;
global.playerExp = obj_Player_Battle.exp1;
global.playerExpRequired = obj_Player_Battle.exp_required;
global.playerAttack = obj_Player_Battle.attack;
global.playerSpeed = obj_Player_Battle.speedA;
global.playerArmor = obj_Player_Battle.armor;
global.playerHP_Max = obj_Player_Battle.hp_max;
global.playerPassive = obj_Player_Battle.passive;  
global.playerHP_Current = obj_Player_Battle.hp;
}

//reset HP to max health
if variable_global_exists("playerLevel")
{
    global.playerHP_Current = global.playerHP_Max;
}