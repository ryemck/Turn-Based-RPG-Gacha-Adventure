switch(global.phase){
    case gamephase.init:
        //set variable to save attack at start of battle
        startingattack = global.playerAttack;
        if(global.playerSpeed >= objectID.speedA){
            global.phase = gamephase.playerTurn;
        }else if (objectID.speedA > global.playerSpeed){
            global.phase = gamephase.enemyTurn;
        }
    
        break;
    case gamephase.playerTurn:
        
            //check if skill menu exists, display it if not
            if(!instance_exists(obj_ChooseSkill_DefaultPlayer)){
            instance_create_layer(x, y, "Instances", obj_ChooseSkill_DefaultPlayer);
            }

        break;
    case gamephase.enemyTurn:
    
    //choose the script, based on the enemy
    if (global.enemy1name == "obj_SkeletonMage"){
        scrpt_SkeletonMageSkills() ;  
    }else if (global.enemy1name == "obj_OrcWarrior"){
            scrpt_OrcWarriorSkills() ;  
        }else{
            scrpt_OrcWarriorSkills() ; 
        }
    
    //if player has no health, go to lose phase
    if(global.playerHP_Current <= 0){
        global.phase = gamephase.lose;
    }else if (objectID.hp <= 0){
        global.phase = gamephase.win;
    }else{
        
    global.phase = gamephase.playerTurn;
    }
    

        
        break;
    case gamephase.process:
            
        
        break;
    case gamephase.checkFinish:
            
        
        break;
    case gamephase.endTurn:
            
        
        break;
    case gamephase.win:
        //give exp reward
        global.playerExp = global.playerExp + objectID.exp_provided;
        show_message("You win! You gain " + string(objectID.exp_provided) + "exp!");
        //if exp is more than required, then level up
        if(global.playerExp >= global.playerExpRequired){
            global.playerExp = global.playerExp - global.playerExpRequired;
            //increase next exp requirement
            global.playerExpRequired = global.playerExpRequired * 1.2
            //give bonus stats
            global.playerLevel++;
            global.playerHP_Max = global.playerHP_Max + 2;
            global.playerAP++;
            show_message("Level up! You gained 1 AP & 2 max health! :D");
            
        }
    //clean up, set player attack to starting amount and go back to main screen
    global.playerAttack = startingattack;
        room_goto(rm_Main);
    
        break;
    case gamephase.lose:
        
    //clean up
        global.playerAttack = startingattack;
        instance_destroy();    
        show_message("You lose, noob!");
        room_goto(rm_Main);
        break;
}