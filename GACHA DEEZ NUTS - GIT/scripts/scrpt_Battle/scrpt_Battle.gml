function scrpt_DoDamage(){
    var objectID = global.enemy1id; 
    //get player attack stat
    var playerDamage = global.playerAttack;
    //get enemy armor stat
    var enemyArmor = objectID.armor;
    //get enemy passive
    var enemyPassive = objectID.passive;
    //reduce damage by enemy armor
    if(enemyArmor > playerDamage){
    var reduceDamage = playerDamage / 2;
    }else if (enemyArmor <= playerDamage){
        var reduceDamage = playerDamage * 0.8;
    }else{
        reduceDamage = 0;
    }
    // calculate playerdamage minus the reduced damage for total damage
    var damageDealt = playerDamage - reduceDamage;
    //apply passives
    if(attacktype == "ranged"){
            damageDealt = damageDealt * 1.5;
        }
    if(attacktype == "ranged" && enemyPassive == "boney"){
        show_message("Boney! - Skeleton's passive reduces ranged damage by 50%");
        damageDealt = damageDealt / 2;
    }
    
    //reduce HP
    global.enemy1id.hp = objectID.hp - damageDealt;

    

}

function scrpt_endPlayerTurn(){
    instance_destroy(obj_ChooseSkill_DefaultPlayer);
    global.phase = gamephase.enemyTurn;
    global.turn_count = global.turn_count + 1;
    
}

function scrpt_skillRoll(){
    enum npcAttack{
            none,
            skill1,
            skill2,
            skill3
        }
        
        npcAttackState = npcAttack.none;
        
        //roll once to decide attack
        roll = 0;
        if(roll == 0){
            roll = 1;
            skillchoice = irandom(2);
        }
        
        if(skillchoice == 0){
            npcAttackState = npcAttack.skill1;
        }else if(skillchoice == 1){
            npcAttackState = npcAttack.skill2;
        }else if(skillchoice == 2){
            npcAttackState = npcAttack.skill3;    
            }
}

function scrpt_calcDamage(){
    attacked = 0;
    objectID = global.enemy1id; 
        npcName = objectID.eName;
        //get NPC attack stat
        npcDamage = objectID.attack;
        //get player armor stat
        playerArmor = global.playerArmor;
        //get player passive
        playerPassive = global.playerPassive;
    
    if(playerArmor > npcDamage){
        var reduceDamage = npcDamage / 2;
        }else if (playerArmor <= npcDamage){
            var reduceDamage = npcDamage * 0.8;
        }else{
            reduceDamage = 0;
        }
    
    //reduce damage by player armor
    var reduceDamage = npcDamage / playerArmor;
    // calculate npc damage minus the reduced damage for total damage
    damageDealt = npcDamage - reduceDamage;
    
}


function scrpt_SkeletonMageSkills(){

    scrpt_skillRoll();
    
    
    switch(npcAttackState){
        case npcAttack.none :
            
        break;
        
        case npcAttack.skill1 :
            scrpt_calcDamage();
            
            show_message(string(npcName) + " attacks you for " + string(damageDealt) + " damage!");
            global.playerHP_Current = global.playerHP_Current - damageDealt;   
        break;
        case npcAttack.skill2 :
                 show_message("skill 2");     
        break;
        case npcAttack.skill3 :
                  show_message("skill 3");    
        break;
    }
    npcAttackState = npcAttack.none;
}

function scrpt_OrcWarriorSkills(){
        scrpt_calcDamage();
    scrpt_skillRoll();
    switch(npcAttackState){
            case npcAttack.none :
                
            break;
            
            case npcAttack.skill1 :
                show_message("ORC SKILL WUN")
            break;
            case npcAttack.skill2 :
                    show_message("ORC SKILL TOO");     
            break;
            case npcAttack.skill3 :
                    show_message("ORC SKILL TREE");    
            break;
        }
}



