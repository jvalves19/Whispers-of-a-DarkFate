// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações


function pickItems(_item, _itemInstance){	
	var quant = _itemInstance.quantity;
	
	//Check for the same item to add
	for(var inv=0; inv < obj_player.maxInvSlots; inv++){
		if(global.a_inv[inv, e_inventory.type] == item){
			var maxQuantity = global.a_items[item, e_item_stats.maxStack];
			var currentQuantity = global.a_inv[inv, e_inventory.quantity];
			
			if((currentQuantity + quant) <= maxQuantity){
				global.a_inv[inv, e_inventory.quantity] += quant;
				
				quant = 0;
				//destroy item
				with(_itemInstance){
					instance_destroy();
				}
			} else {
				global.a_inv[inv, e_inventory.quantity] = maxQuantity;
				quant -= (maxQuantity - currentQuantity);
			}
		}
	}
	
	
	if(quant > 0){
		//Loop inventory and check empty slot
		for(var inv=0; inv < obj_player.maxInvSlots; inv++){
			if(global.a_inv[inv, e_inventory.type] == -1){
				//Add item to Empy Slot
				global.a_inv[inv, e_inventory.type] = _item;
				//Add thq quantity
				global.a_inv[inv, e_inventory.quantity] = quant;
				
				quant = 0;
				with _itemInstance{
					instance_destroy();
				}
	
				break;
			}
		}
		if(instance_exists(_itemInstance)){
			_itemInstance.quantity = quant;
		}
	}
	
	
}

function dropItems(_item){
	if(_item > -1){
		xx = obj_player.x + sprite_width/sprite_width;
		yy = obj_player.y - sprite_height;

		newItem = instance_create_layer(xx, yy, "Items", obj_item);
		newItem.image_index = _item;
		newItem.canBePicked = false;
		newItem.maxQuantity = global.a_inv[obj_player.item, e_inventory.quantity];
	}
	
	global.a_inv[obj_player.item, e_inventory.type] = -1;
	global.a_inv[obj_player.item, e_inventory.quantity] = 0;
}