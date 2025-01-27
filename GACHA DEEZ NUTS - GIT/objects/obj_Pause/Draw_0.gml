draw_background(background, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ));
var a, c;
a = draw_get_alpha();
c = draw_get_colour();

draw_set_alpha(0.6);
draw_set_colour(0);
draw_rectangle(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ), false);

draw_set_colour(c_white);
draw_set_alpha(1);
draw_background_stretched(bGamePaused, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));

draw_set_alpha(a); draw_set_colour(c);

