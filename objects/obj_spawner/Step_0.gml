if noisetimer && !noise
noisetimer--

if !noisetimer && !noise
{
var _mylittlenoise=instance_create_depth(x,y,depth-1,obj_noise)
_mylittlenoise.owner=id
_mylittlenoise.image_speed=1/global.gamespeed
noise=1
randomise() 
noisetimer=choose(irandom_range(irandom_range(20,450),obj_controller.noisehole[random(1) - 1].noisetimer),irandom_range(20,450));
}