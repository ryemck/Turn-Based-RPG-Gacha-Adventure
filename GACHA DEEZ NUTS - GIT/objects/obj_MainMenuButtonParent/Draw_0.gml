draw_self();
// selects the font
draw_set_font(fnt_MainMenu);
// sets font alignment
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

//draws the button text
draw_text(x+200, y+70, button_text);
draw_set_colour(#B59410);

//resets alignment to default values
draw_set_halign(fa_left);
draw_set_valign(fa_top);