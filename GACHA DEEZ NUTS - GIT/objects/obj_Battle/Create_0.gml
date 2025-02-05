global.turn_count = 0;

enum gamephase{
    init,
    playerTurn,
    enemyTurn,
    process,
    checkFinish,
    endTurn,
    win,
    lose
    
}

//set the phase
global.phase = gamephase.init;

//get ID of the object to spawn
objectID = global.enemy1id; 

//spawnenemy
instance_create_layer(800, 120, "Instances", objectID);

//spawn player
instance_create_layer(30, 120, "Instances", obj_Player_Battle);
