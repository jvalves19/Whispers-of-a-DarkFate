var cam = instance_create_layer(x, y, layer, obj_camera);
cam.target = id;

spd = 2;
hSpd = 0;
vSpd = 0;

global.owPlayerID = object_index;