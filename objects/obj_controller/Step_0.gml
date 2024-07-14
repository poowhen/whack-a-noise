if device_mouse_check_button_pressed(0,mb_left) && hammersub=0
hammersub=1

if hammersub
hammersub+=0.5

if hammersub>6
hammersub=0

if global.supertauntnotic=15
{
	global.supertauntnotic=16
	audio_play_sound(sd_supertauntnotif,1,0)
}

if global.supertauntnotic>15
{
if alarm[0]=-1
alarm[0]=5
}
else
alarm[0]=-1

	if device_mouse_check_button_pressed(0,mb_right) && !taunt
	if global.supertauntnotic>15
	{
	taunt=1
	tauntsub=0
	audio_play_sound(sd_supertaunt,1,0)
	with obj_rock
	instance_destroy()
	
	with obj_noise
	{
		
		
		if sprite_index=spr_nosie ||sprite_index=spr_doise || sprite_index=spr_noisey
		{
			with instance_create_depth(x,y,depth-1,obj_static) {sprite_index=spr_bangeffect}
				if sprite_index=spr_noisey
	global.score+=30
	if sprite_index=spr_doise
	global.score+=20
	if sprite_index=spr_nosie
	global.score+=10
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
	audio_play_sound(sd_nosiescream,1,0)
	if sprite_index=spr_doise
	audio_play_sound(sd_dosiescream,1,0)
	
		}
	}
	
	global.supertauntnotic=0
	scalesp=0.2
	}
	else
	{
	audio_play_sound(sd_taunt,1,0,1,0,choose(1,0.9,1.1))
	taunt=1
	tauntsub=0
	}
	




scalegrv+=0.01
scale+=scalesp
scale-=scalegrv

if scalesp>0
scalesp-=0.01

if scalesp<0
scalesp=0

if scale<1
{
scale=1
scalegrv=0
}

if global.noisette>50
global.noisette=50

if taunt
{
tauntsub+=0.5
if tauntsub>=8
{
taunt=0
tauntsub=0
}
}

if global.gamespeed<0.6
global.gamespeed=1
//wave(0.1,2,5,0)
global.gamespeed-=0.0001