{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "rm_graveyard1",
  "creationCodeFile": "",
  "inheritCode": false,
  "inheritCreationOrder": false,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"inst_2B2AFFFA_1_1_1_2","path":"rooms/rm_graveyard1/rm_graveyard1.yy",},
    {"name":"inst_64518BA2_1_1_1_2","path":"rooms/rm_graveyard1/rm_graveyard1.yy",},
    {"name":"inst_7AC2D274_1_1_1_2","path":"rooms/rm_graveyard1/rm_graveyard1.yy",},
    {"name":"inst_569255BA_1_1_1_2","path":"rooms/rm_graveyard1/rm_graveyard1.yy",},
    {"name":"inst_3E83D9C7_1_2","path":"rooms/rm_graveyard1/rm_graveyard1.yy",},
    {"name":"inst_78596E2B_1","path":"rooms/rm_graveyard1/rm_graveyard1.yy",},
    {"name":"inst_5BCD06EA_1","path":"rooms/rm_graveyard1/rm_graveyard1.yy",},
    {"name":"inst_22BDED49_1","path":"rooms/rm_graveyard1/rm_graveyard1.yy",},
    {"name":"inst_7A96257B_1","path":"rooms/rm_graveyard1/rm_graveyard1.yy",},
    {"name":"inst_128352E5_2","path":"rooms/rm_graveyard1/rm_graveyard1.yy",},
    {"name":"inst_7FBA67BA_1","path":"rooms/rm_graveyard1/rm_graveyard1.yy",},
    {"name":"inst_43D1E8D4_1","path":"rooms/rm_graveyard1/rm_graveyard1.yy",},
    {"name":"inst_2766FA7C_1","path":"rooms/rm_graveyard1/rm_graveyard1.yy",},
    {"name":"inst_4D08EBEF","path":"rooms/rm_graveyard1/rm_graveyard1.yy",},
    {"name":"inst_2206E8FF","path":"rooms/rm_graveyard1/rm_graveyard1.yy",},
    {"name":"inst_392CACCD","path":"rooms/rm_graveyard1/rm_graveyard1.yy",},
    {"name":"inst_16717C50","path":"rooms/rm_graveyard1/rm_graveyard1.yy",},
    {"name":"inst_580DAF18","path":"rooms/rm_graveyard1/rm_graveyard1.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Game_Controller","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_3E83D9C7_1_2","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_pause","path":"objects/obj_pause/obj_pause.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":32.0,"y":64.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Dialogue","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Sensing","depth":200,"effectEnabled":true,"effectType":null,"gridX":8,"gridY":16,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_16717C50","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_sense","path":"objects/obj_sense/obj_sense.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_sense","path":"objects/obj_sense/obj_sense.yy",},"propertyId":{"name":"destination","path":"objects/obj_sense/obj_sense.yy",},"value":"rm_castle",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_sense","path":"objects/obj_sense/obj_sense.yy",},"propertyId":{"name":"destionation_x","path":"objects/obj_sense/obj_sense.yy",},"value":"75",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_sense","path":"objects/obj_sense/obj_sense.yy",},"propertyId":{"name":"destionation_y","path":"objects/obj_sense/obj_sense.yy",},"value":"70",},
          ],"rotation":0.0,"scaleX":1.125,"scaleY":0.75,"x":960.0,"y":832.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","depth":300,"effectEnabled":true,"effectType":null,"gridX":16,"gridY":16,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_580DAF18","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_npcFather","path":"objects/obj_npcFather/obj_npcFather.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":64.0,"y":64.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Collision","depth":400,"effectEnabled":true,"effectType":null,"gridX":4,"gridY":4,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_2B2AFFFA_1_1_1_2","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_block","path":"objects/obj_block/obj_block.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":27.5,"x":-32.0,"y":0.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_64518BA2_1_1_1_2","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_block","path":"objects/obj_block/obj_block.yy",},"properties":[],"rotation":0.0,"scaleX":21.500002,"scaleY":1.0,"x":-44.0,"y":480.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_7AC2D274_1_1_1_2","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_block","path":"objects/obj_block/obj_block.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":25.5,"x":1184.0,"y":0.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_569255BA_1_1_1_2","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_block","path":"objects/obj_block/obj_block.yy",},"properties":[],"rotation":0.0,"scaleX":41.0,"scaleY":1.0,"x":-64.0,"y":-32.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_78596E2B_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_block","path":"objects/obj_block/obj_block.yy",},"properties":[],"rotation":0.0,"scaleX":4.875,"scaleY":1.5,"x":348.0,"y":656.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5BCD06EA_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_block","path":"objects/obj_block/obj_block.yy",},"properties":[],"rotation":0.0,"scaleX":3.7499998,"scaleY":1.5,"x":500.0,"y":632.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_22BDED49_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_block","path":"objects/obj_block/obj_block.yy",},"properties":[],"rotation":0.0,"scaleX":4.0,"scaleY":0.75,"x":784.0,"y":472.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_7A96257B_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_block","path":"objects/obj_block/obj_block.yy",},"properties":[],"rotation":0.0,"scaleX":3.5,"scaleY":2.0,"x":700.0,"y":692.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_128352E5_2","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_block","path":"objects/obj_block/obj_block.yy",},"properties":[],"rotation":0.0,"scaleX":1.125,"scaleY":1.5,"x":640.0,"y":484.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_7FBA67BA_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_block","path":"objects/obj_block/obj_block.yy",},"properties":[],"rotation":24.795694,"scaleX":9.625,"scaleY":1.5,"x":79.889694,"y":788.04877,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_43D1E8D4_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_block","path":"objects/obj_block/obj_block.yy",},"properties":[],"rotation":0.0,"scaleX":2.625,"scaleY":2.0,"x":620.0,"y":660.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_2766FA7C_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_block","path":"objects/obj_block/obj_block.yy",},"properties":[],"rotation":0.0,"scaleX":6.125,"scaleY":1.5,"x":996.0,"y":772.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_4D08EBEF","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_block","path":"objects/obj_block/obj_block.yy",},"properties":[],"rotation":0.0,"scaleX":3.625,"scaleY":2.125,"x":808.0,"y":728.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_2206E8FF","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_block","path":"objects/obj_block/obj_block.yy",},"properties":[],"rotation":0.0,"scaleX":31.375,"scaleY":1.125,"x":-80.0,"y":796.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_392CACCD","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_block","path":"objects/obj_block/obj_block.yy",},"properties":[],"rotation":0.0,"scaleX":5.0,"scaleY":0.75,"x":1008.0,"y":552.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Tile_02","depth":500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":50,"SerialiseWidth":75,"TileCompressedData":[
-1918,0,-32,-2147483648,-3,0,2,98,99,-39,0,-31,-2147483648,-3,0,2,126,127,-39,0,-31,-2147483648,-3,0,2,154,155,-40,0,-6,-2147483648,4,88,89,90,91,-20,-2147483648,40,88,89,90,182,183,89,90,91,88,89,90,91,88,89,90,91,88,89,90,91,88,89,90,91,88,89,90,91,88,89,90,91,88,89,90,91,
88,89,90,91,-5,0,-4,-2147483648,8,113,114,116,117,118,119,123,124,-18,-2147483648,42,116,117,118,119,116,117,118,119,116,117,118,119,116,117,118,119,116,117,118,119,116,117,118,119,116,117,118,119,116,117,118,119,116,117,118,119,116,117,118,119,123,124,-3,0,-4,-2147483648,8,141,142,144,145,146,147,151,152,
-18,-2147483648,44,144,145,146,147,144,145,146,147,144,145,146,147,144,145,146,147,144,145,146,147,144,145,146,147,144,145,146,147,144,145,146,147,144,145,146,147,144,145,146,147,151,152,0,0,-5,-2147483648,-2,0,-4,-2147483648,-2,0,-18,-2147483648,42,216,217,218,219,220,215,216,215,216,215,216,215,216,215,216,215,216,
215,216,215,216,215,216,215,216,215,216,215,216,215,216,215,216,215,216,215,216,215,216,215,216,180,-7,-2147483648,-2,0,-4,-2147483648,-2,0,-18,-2147483648,41,244,245,246,247,248,243,244,243,244,243,244,243,244,243,244,243,244,243,244,243,244,243,244,243,244,243,244,243,244,243,244,243,244,243,244,243,244,243,244,
243,244,-8,-2147483648,-2,0,-4,-2147483648,-2,0,-8,-2147483648,8,88,89,90,91,88,89,0,0,-65,-2147483648,10,113,114,116,117,118,119,116,117,123,124,-65,-2147483648,10,141,142,144,145,146,147,144,145,151,152,-65,-2147483648,-2,0,-6,-2147483648,-2,0,-65,-2147483648,-2,0,-6,-2147483648,-2,0,-35,-2147483648,4,88,89,90,91,-26,-2147483648,-2,0,-6,
-2147483648,-2,0,-33,-2147483648,8,113,114,116,117,118,119,123,124,-58,-2147483648,20,88,89,90,91,90,91,89,90,91,141,142,144,145,146,147,151,152,88,89,90,-53,-2147483648,24,113,114,116,117,118,119,118,119,117,118,119,169,170,144,145,146,147,179,180,116,117,118,123,124,-49,-2147483648,31,113,114,141,142,144,145,146,147,
146,147,145,146,147,144,145,146,147,144,145,146,147,144,145,146,151,152,88,88,89,90,91,-42,-2147483648,35,113,114,141,142,169,170,142,169,170,144,145,146,147,144,145,146,147,144,145,146,147,144,145,144,145,146,147,180,116,116,117,118,119,123,124,-38,-2147483648,9,113,114,141,142,169,170,142,169,170,-10,-2147483648,
23,144,145,146,147,144,145,146,147,144,145,146,147,144,145,146,147,151,152,88,89,90,91,91,-31,-2147483648,9,113,114,141,142,169,170,142,169,170,-16,-2147483648,21,144,145,146,147,144,145,146,147,146,147,144,145,146,147,116,117,118,119,119,123,124,-27,-2147483648,9,113,114,141,142,169,170,142,169,170,-20,-2147483648,19,
144,145,146,147,145,146,147,144,145,146,147,142,144,145,146,147,147,151,152,-25,-2147483648,9,113,114,141,142,169,170,142,169,170,-22,-2147483648,12,144,145,146,147,144,145,146,147,145,146,147,142,-5,-2147483648,2,179,180,-3,-2147483648,-3,0,26,89,90,91,88,89,90,91,88,89,90,91,120,121,120,121,120,121,113,114,
141,142,169,170,142,169,170,-28,-2147483648,8,144,145,146,147,145,146,147,170,-10,-2147483648,27,0,113,114,117,118,119,116,117,118,119,116,117,118,119,148,149,148,149,148,149,141,142,169,170,142,169,170,-30,-2147483648,8,144,145,146,147,145,146,147,142,-10,-2147483648,14,0,141,142,145,146,147,144,145,146,147,144,145,146,
147,],"TileDataFormat":1,},"tilesetId":{"name":"tl_grave02","path":"tilesets/tl_grave02/tl_grave02.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Tile_01","depth":600,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":50,"SerialiseWidth":75,"TileCompressedData":[
-791,-2147483648,-3,49,-64,-2147483648,-5,49,3,-2147483648,49,-2147483648,-3,86,-64,-2147483648,-5,86,-36,0,-18,-2147483648,7,49,-2147483648,49,49,-2147483648,-2147483648,49,-3,-2147483648,1,49,-5,-2147483648,-5,123,-37,0,-17,-2147483648,7,86,-2147483648,86,86,-2147483648,-2147483648,86,-3,-2147483648,1,86,-7,-2147483648,-3,49,-564,0,11,260,261,262,263,264,265,266,267,268,269,270,-64,0,11,
322,323,324,325,326,327,328,329,330,331,332,-64,0,11,384,385,386,387,388,389,390,391,392,393,394,-62,0,-2,-2147483648,11,446,447,448,449,450,451,452,453,454,455,456,-3,0,-22,-2147483648,-3,0,-36,-2147483648,13,508,509,510,511,512,513,514,515,516,517,518,0,0,-23,-2147483648,-3,0,-36,-2147483648,11,570,571,572,573,574,
575,576,577,578,579,580,-25,-2147483648,3,561,562,563,-36,-2147483648,11,632,633,634,635,636,637,638,639,640,641,642,-25,-2147483648,3,623,624,625,-36,-2147483648,11,694,695,696,697,698,699,700,701,702,703,704,-25,-2147483648,3,685,686,687,-36,-2147483648,11,756,757,758,759,760,761,762,763,764,765,766,-25,-2147483648,3,747,748,749,-72,-2147483648,3,
809,810,811,-851,-2147483648,-5,0,-65,-2147483648,5,467,468,469,470,471,-5,0,-65,-2147483648,5,529,530,531,532,533,-5,0,-65,-2147483648,5,591,592,593,594,595,-5,0,-65,-2147483648,5,653,654,655,656,657,-5,0,-65,-2147483648,5,715,716,717,718,719,-5,0,-65,-2147483648,5,777,778,779,780,781,-4,0,-79,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"tl_grave01","path":"tilesets/tl_grave01/tl_grave01.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Tile_00","depth":700,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":50,"SerialiseWidth":75,"TileCompressedData":[
-75,-2147483648,-16,0,-59,-2147483648,-16,0,-59,-2147483648,-16,0,-59,-2147483648,-16,0,-59,-2147483648,-16,0,-59,-2147483648,-23,0,-52,-2147483648,-23,0,-52,-2147483648,-23,0,-9,-2147483648,-12,0,-31,-2147483648,-23,0,-8,-2147483648,-14,0,-30,-2147483648,-23,0,-8,-2147483648,-14,0,-30,-2147483648,-30,0,1,-2147483648,-14,0,-30,-2147483648,-30,0,1,-2147483648,-43,0,1,-2147483648,-30,0,1,-2147483648,-44,
0,1,-2147483648,-29,0,1,-2147483648,-794,0,40,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,-5,0,-30,-2147483648,40,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,
46,47,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,-5,0,-30,-2147483648,40,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,-5,0,-30,-2147483648,40,74,75,76,77,78,
79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,-5,0,-30,-2147483648,40,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,102,103,104,105,106,107,108,109,110,111,112,113,114,
115,116,117,118,119,-5,0,-30,-2147483648,40,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,-5,0,-30,-2147483648,40,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,
166,167,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,-5,0,-58,-2147483648,-16,0,-59,-2147483648,-13,0,6,134,135,136,137,138,139,-49,-2147483648,6,134,135,136,137,138,139,-14,-2147483648,6,158,159,160,161,162,163,-13,-2147483648,9,134,135,136,134,135,136,137,138,139,-27,-2147483648,6,158,159,160,161,162,
163,-14,-2147483648,12,134,135,136,137,138,139,134,135,136,137,138,139,-7,-2147483648,9,158,159,160,158,159,160,161,162,163,-6,-2147483648,-15,159,12,134,135,136,137,138,139,134,135,136,137,138,139,-14,159,34,158,159,160,161,134,135,136,134,135,136,137,138,139,134,135,136,137,138,139,134,135,136,134,135,136,137,138,
139,134,135,136,137,138,139,-15,159,60,158,159,134,135,136,137,138,139,134,135,136,137,138,139,134,135,136,137,138,139,134,135,136,137,138,139,134,135,136,137,158,159,160,158,159,160,161,162,163,158,159,160,161,162,163,158,159,160,158,159,160,161,162,163,158,159,160,161,162,163,-9,159,66,134,135,
136,137,138,139,134,135,158,159,160,161,162,163,158,159,160,161,162,163,24,25,26,27,28,29,30,31,32,33,34,35,36,137,138,139,134,135,136,134,135,136,137,138,139,134,135,136,134,135,136,137,138,139,134,135,136,137,138,139,134,135,136,137,138,139,-5,159,70,134,135,136,137,138,139,134,135,
136,137,138,139,134,135,136,137,138,139,134,135,136,137,138,139,48,49,50,51,52,53,54,55,56,57,58,59,60,161,162,163,158,159,160,158,159,160,161,162,163,158,159,160,158,159,160,161,162,163,158,159,160,161,162,163,158,159,160,161,162,163,-5,159,745,158,159,160,161,162,163,158,159,160,161,
162,163,158,159,160,161,24,25,26,27,28,29,30,31,72,73,74,75,24,25,26,27,28,29,30,31,32,33,34,35,36,138,139,134,135,136,137,138,139,134,135,136,134,135,136,137,138,139,134,135,136,137,138,139,134,135,136,137,138,139,135,136,137,138,139,134,135,136,137,138,139,134,135,136,137,
24,25,26,27,28,29,48,49,50,51,52,53,54,55,96,97,98,99,48,49,50,51,52,53,24,25,26,27,37,38,39,40,41,42,43,44,45,162,163,158,159,160,158,159,160,161,162,163,158,159,160,161,162,163,158,159,160,161,162,163,159,160,161,162,163,158,159,160,161,162,163,158,159,160,161,
48,49,50,51,52,53,72,73,74,75,76,77,78,79,120,121,122,123,72,73,74,75,76,77,48,49,50,51,61,62,63,64,65,66,67,68,69,138,139,134,135,136,134,135,136,137,138,139,134,135,136,137,138,139,134,135,136,137,138,139,135,136,137,138,139,134,135,136,137,138,139,134,135,136,24,
25,26,27,28,29,30,96,97,98,99,100,101,102,103,144,145,146,147,96,97,98,99,100,101,72,73,74,75,85,86,87,88,89,37,38,39,40,41,42,43,44,45,158,159,160,161,162,163,158,159,160,161,162,163,158,159,160,161,162,163,159,160,161,162,163,158,159,160,24,25,26,27,28,29,48,
49,50,51,52,53,54,120,121,122,123,124,125,126,127,128,129,130,131,120,121,122,123,124,125,96,97,98,99,109,110,111,112,113,61,62,63,64,65,66,67,68,69,134,135,136,137,138,139,134,135,136,137,138,139,134,135,136,137,138,139,135,136,137,138,139,134,135,136,48,49,50,51,52,53,72,
73,74,75,76,77,78,144,145,146,147,148,149,150,151,152,153,154,155,144,145,146,147,148,149,120,121,122,123,133,134,135,136,137,85,86,87,88,89,90,91,92,93,158,159,160,161,162,0,1,2,3,4,5,6,7,8,9,10,11,12,159,160,161,162,163,158,159,160,72,73,74,75,76,77,96,
97,98,99,100,101,102,103,104,105,106,107,108,156,129,130,131,132,133,134,135,134,135,136,137,144,145,146,147,157,158,159,160,161,109,110,111,112,113,114,115,116,117,134,135,136,137,138,24,25,26,27,28,29,30,31,32,33,34,35,36,72,73,74,75,76,77,78,79,96,97,98,99,100,101,120,
121,122,123,124,125,126,127,128,129,130,131,132,152,153,154,155,156,157,158,159,158,159,160,161,162,163,166,167,96,97,98,99,100,133,134,135,136,137,138,139,140,141,158,159,160,161,162,48,49,50,51,52,53,54,55,56,57,58,59,60,96,97,98,99,100,101,102,103,120,121,122,123,124,125,144,
145,146,147,148,149,150,151,152,153,154,155,156,130,131,132,133,134,135,136,137,134,135,136,137,138,139,134,135,120,121,122,123,124,157,158,159,160,161,162,163,164,165,134,135,136,137,138,72,73,74,75,76,77,78,79,80,81,82,83,84,120,121,122,123,124,125,126,127,144,145,146,147,148,149,150,
151,152,153,154,155,156,133,149,150,151,152,153,154,155,156,157,158,159,160,161,158,159,160,161,162,163,158,159,144,145,146,147,148,149,150,151,152,153,154,155,156,163,158,159,160,161,162,96,97,98,99,100,101,102,103,104,105,106,107,108,],"TileDataFormat":1,},"tilesetId":{"name":"tl_grave00","path":"tilesets/tl_grave00/tl_grave00.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"MiddleGround_1","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":800,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":{"name":"spr_mdGrave","path":"sprites/spr_mdGrave/spr_mdGrave.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":400,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":900,"effectEnabled":true,"effectType":"_filter_colourise","gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[
        {"name":"g_Intensity","type":0,"value":"1",},
        {"name":"g_TintCol","type":1,"value":"#FF337FFF",},
      ],"spriteId":{"name":"spr_bgGrave","path":"sprites/spr_bgGrave/spr_bgGrave.yy",},"stretch":true,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "parent": {
    "name": "Areas",
    "path": "folders/Rooms/Areas.yy",
  },
  "parentRoom": null,
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "roomSettings": {
    "Height": 800,
    "inheritRoomSettings": false,
    "persistent": false,
    "Width": 1200,
  },
  "sequenceId": null,
  "views": [
    {"hborder":600,"hport":1080,"hspeed":-1,"hview":300,"inherit":false,"objectId":{"name":"obj_player","path":"objects/obj_player/obj_player.yy",},"vborder":64,"visible":true,"vspeed":-1,"wport":1920,"wview":400,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings": {
    "clearDisplayBuffer": true,
    "clearViewBackground": false,
    "enableViews": true,
    "inheritViewSettings": false,
  },
  "volume": 1.0,
}