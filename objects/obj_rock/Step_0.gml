image_angle+=1/global.gamespeed


y+=round(vsp/global.gamespeed)
vsp+=0.4/global.gamespeed

for (var i = 0; i <= abs(vsp); i++)
{
if instance_place(x,y+i,rock_plat1) && land=0 && vsp>0
{
vsp=-6
land=1
audio_play_sound(sd_rock,1,0)
y=instance_place(x,y+i,rock_plat1).bbox_top-27
}

if instance_place(x,y+i,rock_plat2) && land=1 && vsp>0
{
vsp=-6
land=2
audio_play_sound(sd_rock,1,0)
y=instance_place(x,y+i,rock_plat2).bbox_top-27
}
}
if( round(obj_controller.hammersub)=4 || obj_controller.taunt) && (abs(device_mouse_x(0)-x) < 46) && (abs(device_mouse_y(0)-y+vsp) < 40)
{
if obj_controller.taunt
{
with instance_create_depth(x,y,depth-1,obj_static) {sprite_index=spr_parry}
audio_stop_sound(sd_taunt)
audio_play_sound(sd_parry,1,0)
obj_controller.taunt=0
obj_controller.tauntsub=0
obj_controller.scalesp=0.1
global.score+=10
}
instance_destroy()
}
if y>=room_height
{
global.score-=10
instance_destroy()
audio_play_sound(sd_hurt,1,0)
audio_play_sound(choose(sd_damge_1,sd_damge_2,sd_damge_3,sd_damge_4),1,0,1,0,choose(1,0.9,1.1))
}

if (abs(device_mouse_x(0)-x) < 46) && (abs(device_mouse_y(0)-y+vsp) < 40)
{

image_blend=make_colour_hsv(190, 255, 120);

}
else
image_blend=c_white