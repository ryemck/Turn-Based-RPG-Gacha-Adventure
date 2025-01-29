//menu arrays, sets the sprites to be called later
battlemenu[0] = s_skill_1;
battlemenu[1] = s_skill_2;
battlemenu[2] = s_skill_3;

battlemenuSelected[0] = s_skill_1_selected;
battlemenuSelected[1] = s_skill_2_selected;
battlemenuSelected[2] = s_skill_3_selected;

skillDescription[0] = "Deals " + string(global.playerAttack) + " damage (melee)";
skillDescription[1] = "Increases attack by 50%";
skillDescription[2] = "Deals " + string(global.playerAttack * 1.5) + " damage (ranged)";
//menu index position
index = 0;

