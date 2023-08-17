{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "rm_boss3",
  "creationCodeFile": "",
  "inheritCode": false,
  "inheritCreationOrder": false,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"inst_2B2AFFFA_2_1_1","path":"rooms/rm_boss3/rm_boss3.yy",},
    {"name":"inst_64518BA2_2_1_1","path":"rooms/rm_boss3/rm_boss3.yy",},
    {"name":"inst_7AC2D274_2_1_1","path":"rooms/rm_boss3/rm_boss3.yy",},
    {"name":"inst_569255BA_2_1_1","path":"rooms/rm_boss3/rm_boss3.yy",},
    {"name":"inst_7813363A_1_1","path":"rooms/rm_boss3/rm_boss3.yy",},
    {"name":"inst_3227E888_1_1","path":"rooms/rm_boss3/rm_boss3.yy",},
    {"name":"inst_4B24642C_1","path":"rooms/rm_boss3/rm_boss3.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Game_Controller","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_7813363A_1_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_pause","path":"objects/obj_pause/obj_pause.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":32.0,"y":64.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Dialogue","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","depth":200,"effectEnabled":true,"effectType":null,"gridX":4,"gridY":4,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_3227E888_1_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_sensor","path":"objects/obj_sensor/obj_sensor.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_sensor","path":"objects/obj_sensor/obj_sensor.yy",},"propertyId":{"name":"destination","path":"objects/obj_sensor/obj_sensor.yy",},"value":"rm_world",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_sensor","path":"objects/obj_sensor/obj_sensor.yy",},"propertyId":{"name":"destionation_x","path":"objects/obj_sensor/obj_sensor.yy",},"value":"680",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_sensor","path":"objects/obj_sensor/obj_sensor.yy",},"propertyId":{"name":"destionation_y","path":"objects/obj_sensor/obj_sensor.yy",},"value":"240",},
          ],"rotation":0.0,"scaleX":0.5,"scaleY":0.75,"x":928.0,"y":320.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_4B24642C_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_sensor","path":"objects/obj_sensor/obj_sensor.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_sensor","path":"objects/obj_sensor/obj_sensor.yy",},"propertyId":{"name":"destination","path":"objects/obj_sensor/obj_sensor.yy",},"value":"rm_graveyard",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_sensor","path":"objects/obj_sensor/obj_sensor.yy",},"propertyId":{"name":"destionation_x","path":"objects/obj_sensor/obj_sensor.yy",},"value":"1160",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_sensor","path":"objects/obj_sensor/obj_sensor.yy",},"propertyId":{"name":"destionation_y","path":"objects/obj_sensor/obj_sensor.yy",},"value":"384",},
          ],"rotation":0.0,"scaleX":0.5,"scaleY":0.75,"x":96.0,"y":320.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Collision","depth":300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_64518BA2_2_1_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_block","path":"objects/obj_block/obj_block.yy",},"properties":[],"rotation":0.0,"scaleX":34.0,"scaleY":1.0,"x":-64.0,"y":320.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_569255BA_2_1_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_block","path":"objects/obj_block/obj_block.yy",},"properties":[],"rotation":0.0,"scaleX":34.0,"scaleY":1.0,"x":-64.0,"y":-32.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_7AC2D274_2_1_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_block","path":"objects/obj_block/obj_block.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":14.000001,"x":960.0,"y":-64.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_2B2AFFFA_2_1_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_block","path":"objects/obj_block/obj_block.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":14.0,"x":-32.0,"y":-64.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Tile_02","depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":25,"SerialiseWidth":62,"TileCompressedData":[
-1178,0,186,88,89,90,91,88,89,90,91,88,89,90,91,88,89,90,91,88,89,90,91,88,89,90,91,88,89,90,91,88,89,90,88,89,90,91,88,89,90,91,88,89,90,88,89,90,91,88,89,90,91,88,89,90,88,89,90,91,88,88,
89,90,91,116,117,118,119,116,117,118,119,116,117,118,119,116,117,118,119,116,117,118,119,116,117,118,119,116,117,118,119,116,117,118,116,117,118,119,116,117,118,119,116,117,118,116,117,118,119,116,117,118,119,116,117,118,116,117,118,119,116,116,
117,118,119,144,145,146,147,144,145,146,147,144,145,146,147,144,145,146,147,144,145,146,147,144,145,146,147,144,145,146,147,144,145,146,144,145,146,147,144,145,146,147,144,145,146,144,145,146,147,144,145,146,147,144,145,146,144,145,146,147,144,144,
145,146,147,-186,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"tl_grave02","path":"tilesets/tl_grave02/tl_grave02.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Tile_01","depth":500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":25,"SerialiseWidth":62,"TileCompressedData":[
-785,0,11,286,287,288,289,290,291,292,293,294,295,296,-51,0,11,348,349,350,351,352,353,354,355,356,357,358,-51,0,11,410,411,412,413,414,415,416,417,418,419,420,-51,0,18,472,473,474,475,476,477,478,479,480,481,482,0,0,467,468,469,470,
471,-9,0,5,519,520,521,522,523,-30,0,18,534,535,536,537,538,539,540,541,542,543,544,0,0,529,530,531,532,533,-5,0,12,561,562,563,0,581,582,583,584,585,564,565,566,-5,0,3,561,562,563,-14,0,23,561,562,563,0,0,596,597,598,
599,600,601,602,603,604,605,606,0,0,591,592,593,594,595,-5,0,12,623,624,625,0,643,644,645,646,647,626,627,628,-5,0,3,623,624,625,-14,0,23,623,624,625,0,0,658,659,660,661,662,663,664,665,666,667,668,0,0,653,654,655,656,657,
-5,0,12,685,686,687,0,705,706,707,708,709,688,689,690,-5,0,3,685,686,687,-14,0,23,685,686,687,0,0,720,721,722,723,724,725,726,727,728,729,730,0,0,715,716,717,718,719,-127,0,-186,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"tl_grave01","path":"tilesets/tl_grave01/tl_grave01.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":600,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":{"name":"spr_tlBossGrave01","path":"sprites/spr_tlBossGrave01/spr_tlBossGrave01.yy",},"stretch":true,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":20,},
  ],
  "parent": {
    "name": "Boss",
    "path": "folders/Rooms/Boss.yy",
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
    "Height": 400,
    "inheritRoomSettings": false,
    "persistent": false,
    "Width": 980,
  },
  "sequenceId": null,
  "views": [
    {"hborder":600,"hport":1080,"hspeed":-1,"hview":350,"inherit":false,"objectId":{"name":"obj_camera","path":"objects/obj_camera/obj_camera.yy",},"vborder":64,"visible":true,"vspeed":-1,"wport":1920,"wview":450,"xport":0,"xview":0,"yport":0,"yview":0,},
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