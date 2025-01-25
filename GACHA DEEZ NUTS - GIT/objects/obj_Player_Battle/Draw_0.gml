draw_self();
// selects the font
draw_set_font(fnt_Main);
// sets font alignment
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

//draws the button text
draw_set_colour(c_lime);

//resets alignment to default values
draw_set_halign(fa_left);
draw_set_valign(fa_top);

//display HP if in the battle room
if room == rm_Battle{
draw_text(x, y-10, string("HP: ")+string(global.playerHP_Current)+string(" / ")+string(global.playerHP_Max));
}