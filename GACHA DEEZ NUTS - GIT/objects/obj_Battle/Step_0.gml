switch(global.phase){
    case gamephase.init:
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
        }
    
    //if player has no health, go to lose phase
    if(global.playerHP_Current <= 0){
        global.phase = gamephase.lose;
    }else if (objectID.hp <= 0){
        global.phase = gamephase.win;
    }else{
        
    //go back to player's turn
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
        global.playerExp = global.playerExp + 50;
        //increase exp
        show_message("You win! You gain 50 exp!");
        //if exp is more than required, then level up
        if(global.playerExp >= global.playerExpRequired){
            global.playerExp = global.playerExp - global.playerExpRequired;
            global.playerLevel = global.playerLevel + 1;
            global.playerHP_Max = global.playerHP_Max + 2;
            global.playerAttack = global.playerAttack + 1;
            show_message("Level up! You gained 1 attack & 2 max health! :D");
            
        }
        room_goto(rm_Main);
    
        break;
    case gamephase.lose:
        instance_destroy();    
        show_message("You lose, noob!");
        room_goto(rm_Main);
        break;
}