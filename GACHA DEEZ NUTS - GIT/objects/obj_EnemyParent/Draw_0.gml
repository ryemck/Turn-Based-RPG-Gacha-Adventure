draw_self();
// selects the font
draw_set_font(fnt_Main);
// sets font alignment
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

//draws the button text
draw_set_colour(c_red);

//resets alignment to default values
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text(x, y-10, string("HP: ")+string(objectID.hp)+string(" / ")+string(hp_max));