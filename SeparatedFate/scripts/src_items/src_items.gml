// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações


function pickItems(_item, _itemInstance){	
	var quant = _itemInstance.quantity;
	
	//Check for the same item to add
	for(var inv=0; inv < obj_game_controller.maxInvSlots; inv++){
		if(global.a_inv[inv, e_inventory.type] == _item){
			var maxQuantity = global.a_items[_item, e_item_stats.maxStack];
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
		for(var inv=0; inv < obj_game_controller.maxInvSlots; inv++){
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


function useItem(_item){
	canItem = true;
	
	if(_item == 0){
		if(obj_player.life < global.pMaxLife){
			if((obj_player.life + 50) >= global.pMaxLife){
				obj_player.life = global.pMaxLife;
			}	else {
				obj_player.life = obj_player.life + 50;
			}
		}
		else{
			canItem = false;
		}
	}
	if(_item == 1){
		if(obj_player.aura < global.pMaxAura){
			if((obj_player.aura + 50) >= global.pMaxAura){
				obj_player.aura = global.pMaxAura;
			}	else {
				obj_player.aura = obj_player.aura + 50;
			}
		}
		else {
			canItem = false;
		}
	}
	
	if(canItem){
		global.a_inv[obj_game_controller.selectedItem, e_inventory.quantity] -= 1;
		if(global.a_inv[obj_game_controller.selectedItem, e_inventory.type] <= 0){
			global.a_inv[obj_game_controller.selectedItem, e_inventory.type] = -1;
		}
	}
}