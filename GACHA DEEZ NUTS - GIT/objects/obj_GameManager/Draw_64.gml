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

draw_sprite(s_HeaderBar, 0, x+200, y);
draw_sprite(s_BoxPane2, 0, x+1000, y+600);
draw_text(x+1020, y+620, string("Level: ")+string(global.playerLevel));
draw_text(x+1020, y+635, string("Exp: ")+string(global.playerExp) + " / " + string(global.playerExpRequired));
draw_text(x+1020, y+650, string("Max HP: ")+string(global.playerHP_Max));
draw_text(x+1020, y+665, string("Attack: ")+string(global.playerAttack));
draw_text(x+1020, y+680, string("Defense: ")+string(global.playerDefense));
draw_text(x+1020, y+695, string("Armor: ")+string(global.playerArmor));
draw_text(x+1020, y+710, string("Passive: ")+string(global.playerPassive));
draw_text(x+1020, y+725, string("AP: ")+string(global.playerAP));