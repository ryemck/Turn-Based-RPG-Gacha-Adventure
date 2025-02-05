// selects the font
draw_set_font(fnt_SkillDescription);
// sets font alignment
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

//draws the button text
draw_set_colour(c_white);

//resets alignment to default values
draw_set_halign(fa_left);
draw_set_valign(fa_top);


//spacing
var _gap = 50;
//skill description box
draw_sprite(s_SkillDescBox, 0, room_width - 320, room_height - 120);
//draw each menu array
for (var i = 0; i < array_length_1d(battlemenu); ++i){
    
    //if index is not selected, do normal sprite. If selected, do selected sprite
    if (i != index){
    //draw sprite, subimg, x, y, xscale, yscale, rotation, color, alpha    
    draw_sprite_ext(battlemenu[i], image_index, x + 5 + _gap * i, y + 300, 0.3, 0.3, 0, c_white, 1);
    }else {
    draw_sprite_ext(battlemenuSelected[i], image_index, x + 5 + _gap * i, y + 300, 0.3, 0.3, 0, c_white, 1);
        // draw skill description only when skill is selected
    draw_text(room_width - 290, room_height - 100, skillDescription[i]);
    }

}
