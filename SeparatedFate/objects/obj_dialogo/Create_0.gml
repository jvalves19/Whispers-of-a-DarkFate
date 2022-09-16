enum Infos{
	Texto,
	Lado,
	Nome
}

npc_nome = "";
texto_grid = ds_grid_create(3, 0);
pagina = 0;

global.stateDialogue = global.stateDialogue;

op[0] = "";
op_resposta[0] = "";
op_num = 0;
op_selecionada = 0;
op_draw = false;

inicializar = false;