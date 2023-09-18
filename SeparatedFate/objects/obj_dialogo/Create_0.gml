enum Infos{
	Texto,
	Lado,
	Nome
}

npc_name = "";
texto_grid = ds_grid_create(3, 0);
pagina = 0;

global.bardoDialogue = global.bardoDialogue;

op[0] = "";
op_resposta[0] = "";
op_num = 0;
op_selecionada = 0;
op_draw = false;

inicializar = false;