// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações


function pickItems(_item, _itemInstance){
	//Loop inventory and check empty slot
	for(var inv=0; inv < obj_player.maxInvSlots; inv++){
		if(a_inv[inv] == -1){
			a_inv[inv] = _item;
	
			with _itemInstance{
				instance_destroy();
			}
	
			break;
		}
	}
}

function dropItems(_item){
	if(_item > -1){
		newItem = instance_create_layer(obj_player.x, obj_player.y, "Items", obj_item);
		newItem.image_index = _item;
	}
	
	obj_player.a_inv[obj_player.selectedItem] = -1;
}