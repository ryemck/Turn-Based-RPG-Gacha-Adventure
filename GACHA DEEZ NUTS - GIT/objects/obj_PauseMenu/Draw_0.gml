draw_self();
// selects the font
draw_set_font(fnt_Main);
// sets font alignment
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

//draws the button text
draw_set_colour(c_white);

//resets alignment to default values
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text(x + 40, y + 200, "Spend AP to increase your stats!");
draw_text(x + 40, y + 230, "AP available: " + string(global.playerAP));

//draw clickable buttons
var _select = mouse_check_button_released(mb_left);

for (var i = 0; i < array_length(statIncrease); i++){
     var yy = y + i * 40;
    //hover over a button
    var _hover = point_in_rectangle(mouse_x, mouse_y, x, yy+5, x + 18, yy + 20);
    //draw_rectangle(x + 20, yy+5, x + 38, yy + 20, 1)
    if(_hover){
        // click the button
        if(_select){
            //check if player has the AP required
            if (global.playerAP > 0){
                //reduce AP by 1
                global.playerAP -= 1;
                //do the thing, depending on which button was clicked
            if (i == 0){
                //increase attack
                global.playerAttack += 0.5;
                show_message("Attack increased by 0.5!");   
            }else if (i == 1){
                //increase speed
                global.playerSpeed += 0.01;
                show_message("Speed increased by 0.01!");   
            }else if (i == 2){
                //increase defense
                global.playerDefense += 0.5;
                show_message("Defense increased by 0.5!");   
            }else if (i == 3){
                //increase max HP
                global.playerHP_Max += 1;    
                show_message("Max HP increased by 1!");   
            }
            }
        }
    }
    
    // draw the button
        draw_sprite_ext(statIncrease[i], _hover, x, y + 43 * i, 1, 1, 0, c_white, 1);
}

// draw descriptions for buttons
for (var i = 0; i < array_length_1d(statIncreaseDesc); ++i){
    
    draw_text(x + 20, y + 43 * i, string(statIncreaseDesc[i]));
}