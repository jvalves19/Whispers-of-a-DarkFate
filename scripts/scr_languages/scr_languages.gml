enum LOCALE {
	PT,
	EN
}

ini_open("config.ini");
if(ini_read_real("config", "Language", 0) == ""){
	global.langIndex = 0;
	global.locale = LOCALE.PT;
} else {
	global.locale = ini_read_real("config", "Locale", 0);
	global.langIndex = ini_read_real("config", "Language", 0);
}
ini_close();

initTranslations();

function initTranslations(){
	global.locData = load_csv("languages.csv");	

	var hh = ds_grid_height(global.locData);
	var translations = ds_map_create();
	
	for(var i=0; i<hh; i++){
		ds_map_add(translations, global.locData[# 0, i], i);
	}
	
	global.translations = translations;
}

function translateText(key){
	var text = "";
	
	if(global.translations[? key] != undefined){
		var text = global.locData[# 1 + global.locale, global.translations[? key]];
		//var a = argument_count > 1 ? argument[1] : "";
		//text = string_replace_all(text, "{a}", a);
	} else {
		var text = key;
	}

	return text;
}