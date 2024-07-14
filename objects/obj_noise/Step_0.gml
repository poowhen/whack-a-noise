if round(obj_controller.hammersub)=4 && (abs(device_mouse_x(0)-x) < 46) && (abs(device_mouse_y(0)-y) < 40) && sprite_index!=spr_noisette_sad
{
	if sprite_index=spr_noisette
	{
	sprite_index=spr_noisette_sad
	image_index=0
	timer=20
	with instance_create_depth(x,y,depth-1,obj_static) {sprite_index=spr_bangeffect}
	global.score-=10
	audio_play_sound(sd_hurt,1,0)
	}
	else
	{
	with instance_create_depth(x,y,depth-1,obj_static) {sprite_index=spr_bangeffect}
	instance_destroy()
	with instance_create_depth(x,y,depth,obj_dead) 
	{
		hspeed=random_range(-4,4) 
		vspeed=random_range(-10,-2) 
		if other.sprite_index=spr_doise 
		sprite_index=spr_doise_dead
		if other.sprite_index=spr_noisey
		sprite_index=spr_noisey_dead
	}
	audio_play_sound(sd_hit,1,0)
	if sprite_index!=spr_noisey && sprite_index!=spr_doise
	audio_play_sound(choose(sd_noise1,sd_noise2,sd_noise3,sd_noise4,sd_noise5,sd_noise6),1,0,1,0,choose(1,0.9,1.1))
	if sprite_index=spr_doise
	audio_play_sound(choose(sd_doise1,sd_doise2,sd_doise3,sd_doise4,sd_doise5,sd_doise6),1,0,1,0,choose(1,0.9,1.1))
	global.supertauntnotic+=1
	if sprite_index=spr_noisey
	global.score+=30
	if sprite_index=spr_doise
	global.score+=20
	if sprite_index=spr_nosie
	global.score+=10
	}
}

if timer && sprite_index!=spr_doise && sprite_index!=spr_noisey
timer--

if !timer && sprite_index!=spr_doise && sprite_index!=spr_noisey
instance_destroy()

global.noisette+=0.015/global.gamespeed

if sprite_index=spr_doise && round(image_index)=5 && !myrock
with instance_create_depth(x,y,depth-1,obj_rock) 

{
other.myrock=id
if rock_plat1.bbox_top>bbox_bottom && rock_plat2.bbox_top>bbox_bottom 
land=0 
if rock_plat1.bbox_top<bbox_bottom && rock_plat2.bbox_top>bbox_bottom
land=1 
if rock_plat1.bbox_top<bbox_bottom && rock_plat2.bbox_top<bbox_bottom 
land=2
}

if sprite_index=spr_doise || sprite_index=spr_noisey
timer=2000

if sprite_index=spr_noisey
{
	timer=2000
	
vsp+=0.5/global.gamespeed
y+=vsp/global.gamespeed

if y>=ystart+32 && vsp>0
{
instance_destroy()
}

}

if (abs(device_mouse_x(0)-x) < 46) && (abs(device_mouse_y(0)-y) < 40)
{
if sprite_index=spr_nosie || sprite_index=spr_noisey
image_blend=make_colour_hsv(24, 255, 120);
if sprite_index=spr_doise
image_blend=make_colour_hsv(190, 255, 120);
if sprite_index=spr_noisette
image_blend=make_colour_hsv(200, 255, 120);
}
else
image_blend=c_white