//spacing
var _gap = 30;

//draw each menu array
for (var i = 0; i < array_length_1d(battlemenu); ++i){
    
    //if index is not selected, do normal sprite. If selected, do selected sprite
    if (i != index){
    //draw sprite, subimg, x, y, xscale, yscale, rotation, color, alpha    
    draw_sprite_ext(battlemenu[i], image_index, x + _gap * i, y+150, 0.3, 0.3, 0, c_white, 1);

    }else {
    draw_sprite_ext(battlemenuSelected[i], image_index, x + _gap * i, y+150, 0.3, 0.3, 0, c_white, 1);

    }

}
