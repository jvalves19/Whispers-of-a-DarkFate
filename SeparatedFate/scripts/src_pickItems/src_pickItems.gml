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