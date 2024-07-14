draw_text(400,200,string_hash_to_newline(global.score))
draw_text(400,100,string_hash_to_newline(global.gamespeed))

if taunt
draw_sprite_ext(spr_taunt,tauntsub,(device_mouse_x(0)+24)*1,(device_mouse_y(0)-48)*1,1,1,0,c_white,1)

draw_sprite_ext(spr_hammer,hammersub,(device_mouse_x(0)+18)*1,(device_mouse_y(0)-26)*1,1*scale,1*scale,0,c_white,1)
