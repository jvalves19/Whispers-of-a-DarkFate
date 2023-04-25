// Script assets have changed for v2.3.0 see
function scr_dialogue(){
	switch npc_nome{
		#region BARDO
		case "Bardo":		
			switch global.stateDialogue{	
				case 0:
					ds_grid_add_text("Deseja Salvar o Jogo?", 0, "Bardo");					
					instance_create_layer(x, y, layer, obj_dialogue);
				break;
				
				case 1:
					ds_grid_add_text("Ola, Ilkael", 0, "Bardo")
					ds_grid_add_text("Como sabe meu nome? Quem e voce?", 1, "Ilkael")
					ds_grid_add_text("Eu sei de muitas coisas, camarada", 0, "Bardo")
					ds_grid_add_text("Sei que acabou de tomar uma surra", 0, "Bardo")
					ds_grid_add_text("A proposito... Sou o Bardo. Pode me chamar de Jonas", 0, "Bardo")
					
					ds_grid_add_text("A proposito... Tome esse novo poder para você", 0, "Bardo")
					global.currentSpell = 0;
					global.currentPower = 0;
					
					global.stateDialogue = global.stateDialogue - global.stateDialogue;
				break;
				
				
				case 2:
					ds_grid_add_text("Ola, Ilkael", 0, "Bardo")
					ds_grid_add_text("Tenho umas informações pra você sobre o cara que te espancou", 0, "Bardo")
					ds_grid_add_text("O nome dele é Garleand", 0, "Bardo")
					ds_grid_add_text("Também tenho essa chave pra você", 0, "Bardo")
					global.currentSpell = 1;
					global.currentPower = 1;
					global.key[1] = true;
					
					global.stateDialogue = global.stateDialogue - global.stateDialogue
				break;	
			}
		break;
		#endregion
		
		#region MULHER
		case "Mulher":
			ds_grid_add_text("Você acredita no Amor?", 0, "Mulher");
			ds_grid_add_text("...", 1, "Ilkael");
				add_op("Sim, Acredito sim", "Resposta 1");
				add_op("Não, Acho isso uma palhaçada", "Resposta 2");		
		break;
			case "Resposta 1":
				ds_grid_add_text("O amor é...", 0, "Mulher");
				ds_grid_add_text("Esqueça. Eu só iria dizer bobagem\nPegue essa chave", 0, "Mulher");
				global.key[2] = true;
				
			break;
			
			case "Resposta 2":
				ds_grid_add_text("Não me admira. Você tem uma aparência horrenda", 0, "Mulher");
			break;
			
		#endregion
		
	}
}

function ds_grid_add_row(){
	///@arg ds_grid
 
	var _grid = argument[0];
	ds_grid_resize(_grid,ds_grid_width(_grid),ds_grid_height(_grid)+1);
	return(ds_grid_height(_grid)-1);	
}
 
function ds_grid_add_text(){
	///@arg texto
	///@arg retrato
	///@arg lado
	///@arg nome
 
	var _grid = texto_grid;
	var _y = ds_grid_add_row(_grid);
 
	_grid[# 0, _y] = argument[0];
	_grid[# 1, _y] = argument[1];
	_grid[# 2, _y] = argument[2];
	_grid[# 3, _y] = argument[3];
}

function add_op(_texto, _resposta){
	op[op_num] = _texto;
	op_resposta[op_num] = _resposta;
	
	op_num++;
}