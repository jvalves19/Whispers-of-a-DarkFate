// Script assets have changed for v2.3.0 see
function scr_dialogue(){
	switch npc_nome{
		#region KASSIUS
		case "Kassius":
			switch global.kassiusDialogue{
				case 1:
					ds_grid_add_text("Estranho... Após um longo período\nbuscando por Sylvir", 1, "Kassius");
					ds_grid_add_text("Sua Aura me trouxe à esse cemitério.", 1, "Kassius");
					ds_grid_add_text("Se ela estivesse morta, como eu poderia\nrastrear seus resquícios de Magia?", 1, "Kassius");
					ds_grid_add_text("Será que ela está realmente aqui?", 1, "Kassius");
					global.kassiusDialogue = global.kassiusDialogue+1;
				break;
				case 2:
					ds_grid_add_text("MORRA seu demônio", 1, "Kassius");
					global.kassiusDialogue = global.kassiusDialogue+1;
				break;
			}
			
		break;
		#endregion
		
		#region MERCHANT
		case "Merchant":
			ds_grid_add_text("O que deseja?", 0, "Merchant");
			ds_grid_add_text("...", 1, "Kassius");
				if(global.destroyed[2] && global.potionStash == 5){
					add_op("Aumentar Espaços de Poção +5", "Aumentar Espaços de Poção");
				}
				if(global.damagePotionQtd <= global.potionStash/2){
					add_op("Comprar Poção de Forca +1", "Comprar Poção de Força");
				}
				if(global.spellPotionQtd <= global.potionStash/2){
					add_op("Comprar Poção de Dano Mágico +1", "Comprar Poção de Dano Mágico");
				}					
				add_op("Não Desejo nada", "Não Desejo nada");	
				break;
				
			case "Aumentar Espaços de Poção":
				ds_grid_add_text("Seus espaçoes de poção foram aumentados em +5", 0, "Merchant");
				global.potionStash = global.potionStash+5;
			break;
			
			case "Comprar Poção de Força":
				ds_grid_add_text("...", 0, "Merchant");
				global.damagePotionQtd = global.damagePotionQtd+1;
				global.controllItems[2] = true;
			break;
			case "Comprar Poção de Dano Mágico":
				ds_grid_add_text("...", 0, "Merchant");
				global.spellPotionQtd = global.spellPotionQtd+1;
				global.controllItems[3] = true;
			break;
						
			case "Não Desejo nada":
				ds_grid_add_text("Volte quando quiser", 0, "Merchant");		
			break;
		break;
		#endregion
		
		#region BARDO
		case "Bardo":		
			switch global.bardoDialogue{	
				case 0:
					ds_grid_add_text("Deseja Salvar o Jogo?", 0, "Bardo");					
					instance_create_layer(x, y, layer, obj_dialogue);
				break;
				
				case 1:
					ds_grid_add_text("Ola, Kassius", 0, "Bardo")
					ds_grid_add_text("Como sabe meu nome? Quem e voce?", 1, "Kassius")
					ds_grid_add_text("Eu sei de muitas coisas, camarada", 0, "Bardo")
					ds_grid_add_text("Sei que está procurando por algo que\nhá muito você não sabe onde está", 0, "Bardo")
					ds_grid_add_text("poético, não é?", 0, "Bardo")
					ds_grid_add_text("A proposito... Sou o Bardo. Pode me chamar de Jonas", 0, "Bardo")
					
					ds_grid_add_text("Pode falar comigo se quiser registrar seu progresso em sua busca", 0, "Bardo")
					global.currentSpell = 0;
					global.currentUltimate = 0;
					global.controllBlades[0] = true;
					
					global.bardoDialogue = global.bardoDialogue - global.bardoDialogue;
				break;
				
				case 2:
					ds_grid_add_text("Ola, Kassius", 0, "Bardo")
					ds_grid_add_text("Tenho umas informações pra você sobre o cara que te espancou", 0, "Bardo")
					ds_grid_add_text("O nome dele é Garleand", 0, "Bardo")
					ds_grid_add_text("Também tenho essa chave pra você", 0, "Bardo")
					global.currentSpell = 2;
					global.currentUltimate = 1;
					global.key[1] = true;
					
					global.bardoDialogue = global.bardoDialogue - global.bardoDialogue
				break;	
			}
		break;
		#endregion
		
		#region FERREIRO
		case "Ferreiro":
			switch global.blackSmithDialogue{	
				case 1:		
					ds_grid_add_text("Olá, estrangeiro", 0, "Ferreiro")
					ds_grid_add_text("...", 1, "Kassius")
					ds_grid_add_text("Você não é um sujeito de muitas palavras\n De que terra tu vens?", 0, "Ferreiro")
					ds_grid_add_text("Venho de uma terra distante", 1, "Kassius")
					ds_grid_add_text("De uma terra distante ... \nBem, se estiver interessado posso encantar armas para você", 0, "Ferreiro")
					
					ds_grid_add_text("Me traga as matérias necessárias, tais como almas de demônio\nE posso encantar sua Lâmina", 0, "Ferreiro")
					global.blackSmithDialogue = global.blackSmithDialogue - global.blackSmithDialogue;
				break;			
			}
			
			ds_grid_add_text("Deseja Encantar sua Lâmina?", 0, "Ferreiro");
			obj_blackSmith.state = "work";
			ds_grid_add_text("...", 1, "Kassius");
				if(global.controllBlades[0]){
					add_op("Encantar com Lâmina do Arcano", "Encantar Blade 0");
				}
				if(global.controllBlades[1]){
					add_op("Encantar com Lâmina das Chamas", "Encantar Blade 1");
				}
				if(global.controllBlades[2]){
					add_op("Encantar com Lâmina de Sangue", "Encantar Blade 2");
				}
				add_op("Cancelar", "Cancelar");	
				break;
			case "Encantar Blade 0":
				ds_grid_add_text("A Lâmina do Arcano possibilita que você\nrecupere sua lâmina acertando 3x o inimigo", 0, "Ferreiro");
				global.currentBlade = 0;
			break;
			
			case "Encantar Blade 1":
				ds_grid_add_text("A Lâmina das Chamas\nAumenta seu dano de acordo com sua proeficiência com o fogo", 0, "Ferreiro");
				global.currentBlade = 1;
			break;
			case "Encantar Blade 2":
				ds_grid_add_text("A Bloodstained Blade... \nAcredito que um grande sacrífio foi necessário para obtê-la", 0, "Ferreiro");
				ds_grid_add_text("Aumenta seu dano, sua velocidade\ne absorve a vida de seus adversário", 0, "Ferreiro");
				global.currentBlade = 2;
			break;
						
			case "Cancelar":
				ds_grid_add_text("Volte quando tiver as Matérias necesárias", 0, "Ferreiro");
			break;				
		break;
		#endregion
		
		#region MULHER
		case "Mulher":
			ds_grid_add_text("Você acredita no Amor?", 0, "Mulher");
			ds_grid_add_text("...", 1, "Kassius");
				add_op("Sim, Acredito sim", "Resposta 1");
				add_op("Não, Acho isso uma palhaçada", "Resposta 2");		
			break;
			
			case "Resposta 1":
				ds_grid_add_text("O amor é...", 0, "Mulher");
				if(!global.key[2]){
					ds_grid_add_text("Esqueça. Eu só iria dizer bobagem\nPegue essa chave", 0, "Mulher");
					global.key[2] = true;
				}				
			break;
			
			case "Resposta 2":
				ds_grid_add_text("Não me admira. Você tem uma aparência horrenda", 0, "Mulher");
			break;
		break;
		#endregion
		
		#region SEAMAN
		case "Marujo":
			ds_grid_add_text("Vocês estão se preparando para viajar?", 1, "Kassius");
			ds_grid_add_text("Negativo viajante", 0, "Marujo");
			ds_grid_add_text("Não temos um capitão", 0, "Marujo");
			ds_grid_add_text("O quê? O que houve?", 1, "Kassius");
			ds_grid_add_text("Por que quer tanto saber?", 0, "Marujo");
			ds_grid_add_text("Preciso viajar para o outro continente", 0, "Kassius");
			ds_grid_add_text("Bem...", 0, "Marujo");
			ds_grid_add_text("A filha do Capitão foi sequestrada por uma gangue de piratas", 0, "Marujo");
			ds_grid_add_text("O capitão é extremamente forte e foi atrás deles", 0, "Marujo");
			ds_grid_add_text("Infelizmente não tem muito o que possamos fazer", 0, "Marujo");
			ds_grid_add_text("Me leve até onde ele está. Acredito que posso ajudar", 1, "Kassius");
			ds_grid_add_text("Quer ajudar o capitão a salvar sua filha?", 0, "Marujo");
				add_op("Sim", "Ajudar Capitão");
				add_op("Não", "Não Ajudar Capitão");		
			break;
			case "Ajudar Capitão":
				ds_grid_add_text("Levarei você até o último rastro do capitão", 0, "Marujo");
				ds_grid_add_text("Mas não conte comigo para ajudar, ficarei de longe apenas a olhar", 0, "Marujo");
				global.sceneNumber = 5;
				
				instance_create_layer(x, y, layer, obj_transition);
				
				with(obj_transition){
					destination = rm_forest;
					destination_x = 160;
					destination_y = 394;	
				}				
			break;
			
			case "Não Ajudar Capitão":
				ds_grid_add_text("Não tem o que possamos fazer então", 0, "Marujo");
			break;	
		break;
		#endregion
		
		#region CAPITÃO
		case "Capitão":
			switch(global.capitainDialogue){
				case 1:
					ds_grid_add_text("Soltem Minha filha seus capangas", 0, "Capitão");
					ds_grid_add_text("Depois de todos esses anos você amoleceu capitão", 0, "Capangas");
					ds_grid_add_text("Por todo esse tempo achavamos que você estava morto", 0, "Capangas");
					ds_grid_add_text("Mas após anos descobrimos que aquela noite você fugiu e forjou sua morte", 0, "Capangas");
					ds_grid_add_text("Isso é passado...", 0, "Capitão");
					
					global.capitainDialogue = 2;
				break;
					
				case 2: 
					ds_grid_add_text("...", 0, "Capitão"); 
				
				break;
				
				case 3:
					ds_grid_add_text("Obrigado por me ajudar, voltarei para a cidade agora", 0, "Capitão");
					ds_grid_add_text("Pode contar comigo caso precise viajar para o exterior", 0, "Capitão");
					global.capitainDialogue = global.capitainDialogue - global.capitainDialogue;
					
				break;	
			}
			
			case 0:
				if(global.actRoom != rm_forest){
					ds_grid_add_text("Para onde quer viajar?", 0, "Capitão");
					ds_grid_add_text("...", 1, "Kassius");
				
					if(global.actRoom == rm_seaport01){
						add_op("Viajar para o Continente Norte", "Norte");
						add_op("Não Viajar", "Não Viajar");	
					break;
					}
				
					if(global.actRoom == rm_seaport02){
						add_op("Viajar para o Continente Sul", "Sul");
						add_op("Não Viajar", "Não Viajar");	
					break;
					}
				}

			
				case "Norte":
					ds_grid_add_text("Iremos para o Norte então!", 0, "Capitão");
					instance_create_layer(x, y, layer, obj_transition);
				
					with(obj_transition){
						destination = rm_seaport02;
						destination_x = 150;
						destination_y = 350;	
					}	
				break;
			
				case "Sul":
					ds_grid_add_text("Iremos para o Sul então!", 0, "Capitão");
					instance_create_layer(x, y, layer, obj_transition);
				
					with(obj_transition){
						destination = rm_seaport01;
						destination_x = 1000;
						destination_y = 350;	
					}	
				break;
			
				case "Não Viajar":
					ds_grid_add_text("Estaremos aqui quando voltar", 0, "Capitão");
				break;
			break;
			
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