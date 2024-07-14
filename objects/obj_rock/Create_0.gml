vsp=-5
land=0
if rock_plat1.bbox_top>bbox_bottom && rock_plat2.bbox_top>bbox_bottom 
land=0 
if rock_plat1.bbox_top<bbox_bottom && rock_plat2.bbox_top>bbox_bottom
land=1 
if rock_plat1.bbox_top<bbox_bottom && rock_plat2.bbox_top<bbox_bottom 
land=2

if (abs(480-x) < 32)
hspeed=0

if (abs(480-x) > 32) && x<480
hspeed=-0.7

if (abs(480-x) > 32) && x>480
hspeed=0.7