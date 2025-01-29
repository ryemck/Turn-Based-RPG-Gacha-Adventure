draw_self();
// selects the font
draw_set_font(fnt_PauseMenu);
// sets font alignment
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

//draws the button text
draw_text(x+25, y+15, button_text);
draw_set_colour(#B59410);

//resets alignment to default values
draw_set_halign(fa_left);
draw_set_valign(fa_top);