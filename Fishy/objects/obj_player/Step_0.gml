var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"))
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"))

move_and_collide(_hor * move_speed, _ver * move_speed, tilemap, undefined, undefined, undefined, move_speed, move_speed)

if (_hor != 0 or _ver != 0)
{
    if (_hor > 0) sprite_index = walkright    
    else if (_hor < 0) sprite_index = walkleft
    else if (_ver > 0) sprite_index = walkdown    
    else if (_ver < 0) sprite_index = walkup
        
    facing = point_direction(0, 0, _hor, _ver)

}
else
{
    if (sprite_index == walkright) sprite_index = idleright
    else if (sprite_index == walkleft) sprite_index = idleleft
    else if (sprite_index == walkdown) sprite_index = idledown
    else if (sprite_index == walkup) sprite_index = idledown        
}    

if (keyboard_check_pressed(vk_space))
{
    var _inst = instance_create_depth(x, y, depth, obj_rod)
    _inst.image_angle = facing    

}    