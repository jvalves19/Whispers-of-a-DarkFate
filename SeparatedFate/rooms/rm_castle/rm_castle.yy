{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "rm_castle",
  "creationCodeFile": "",
  "inheritCode": false,
  "inheritCreationOrder": false,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"inst_2B2AFFFA","path":"rooms/rm_castle/rm_castle.yy",},
    {"name":"inst_64518BA2","path":"rooms/rm_castle/rm_castle.yy",},
    {"name":"inst_7AC2D274","path":"rooms/rm_castle/rm_castle.yy",},
    {"name":"inst_569255BA","path":"rooms/rm_castle/rm_castle.yy",},
    {"name":"inst_6D647F3D","path":"rooms/rm_castle/rm_castle.yy",},
    {"name":"inst_23CAEF84","path":"rooms/rm_castle/rm_castle.yy",},
    {"name":"inst_5735E064","path":"rooms/rm_castle/rm_castle.yy",},
    {"name":"inst_2A7C3C2D","path":"rooms/rm_castle/rm_castle.yy",},
    {"name":"inst_3361D285","path":"rooms/rm_castle/rm_castle.yy",},
    {"name":"inst_69DFBAF1","path":"rooms/rm_castle/rm_castle.yy",},
    {"name":"inst_2893E1FA","path":"rooms/rm_castle/rm_castle.yy",},
    {"name":"inst_EDEAE68","path":"rooms/rm_castle/rm_castle.yy",},
    {"name":"inst_1BB7BC30","path":"rooms/rm_castle/rm_castle.yy",},
    {"name":"inst_6E876899","path":"rooms/rm_castle/rm_castle.yy",},
    {"name":"inst_5D349E5D","path":"rooms/rm_castle/rm_castle.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Game_Controller","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_23CAEF84","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_pause","path":"objects/obj_pause/obj_pause.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":32.0,"y":64.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_69DFBAF1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_inventoryBox","path":"objects/obj_inventoryBox/obj_inventoryBox.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":0.66508085,"x":928.0,"y":288.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_2893E1FA","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_bard2","path":"objects/obj_bard2/obj_bard2.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":32.0,"y":320.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Dialogue","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Sensing","depth":200,"effectEnabled":true,"effectType":null,"gridX":8,"gridY":16,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_6D647F3D","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_sensor","path":"objects/obj_sensor/obj_sensor.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_sensor","path":"objects/obj_sensor/obj_sensor.yy",},"propertyId":{"name":"destination","path":"objects/obj_sensor/obj_sensor.yy",},"value":"rm_firstBoss",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_sensor","path":"objects/obj_sensor/obj_sensor.yy",},"propertyId":{"name":"destionation_x","path":"objects/obj_sensor/obj_sensor.yy",},"value":"160",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_sensor","path":"objects/obj_sensor/obj_sensor.yy",},"propertyId":{"name":"destionation_y","path":"objects/obj_sensor/obj_sensor.yy",},"value":"320",},
          ],"rotation":0.0,"scaleX":0.5,"scaleY":0.75,"x":1072.0,"y":384.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_3361D285","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_sensorTutorial","path":"objects/obj_sensorTutorial/obj_sensorTutorial.yy",},"properties":[],"rotation":0.0,"scaleX":0.5,"scaleY":0.75,"x":80.0,"y":384.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","depth":300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5735E064","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_enemy1","path":"objects/obj_enemy1/obj_enemy1.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":480.0,"y":384.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_2A7C3C2D","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_enemy1","path":"objects/obj_enemy1/obj_enemy1.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":640.0,"y":384.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_EDEAE68","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_enemy1","path":"objects/obj_enemy1/obj_enemy1.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":736.0,"y":384.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_1BB7BC30","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_enemy1","path":"objects/obj_enemy1/obj_enemy1.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":448.0,"y":384.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_6E876899","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_enemy1","path":"objects/obj_enemy1/obj_enemy1.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":832.0,"y":384.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5D349E5D","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_enemy1","path":"objects/obj_enemy1/obj_enemy1.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":544.0,"y":384.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Collision","depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_2B2AFFFA","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_block","path":"objects/obj_block/obj_block.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":13.0,"x":-32.0,"y":0.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_64518BA2","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_block","path":"objects/obj_block/obj_block.yy",},"properties":[],"rotation":0.0,"scaleX":41.0,"scaleY":1.0,"x":-64.0,"y":384.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_7AC2D274","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_block","path":"objects/obj_block/obj_block.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":13.0,"x":1184.0,"y":0.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_569255BA","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_block","path":"objects/obj_block/obj_block.yy",},"properties":[],"rotation":0.0,"scaleX":41.0,"scaleY":1.0,"x":-64.0,"y":-32.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Castle","depth":500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":25,"SerialiseWidth":75,"TileCompressedData":[
-66,-2147483648,2,78,79,-6,-2147483648,1,165,-66,-2147483648,2,99,100,-6,-2147483648,1,144,-66,-2147483648,2,57,58,-6,-2147483648,1,165,-66,-2147483648,2,78,79,-6,-2147483648,1,144,-66,-2147483648,2,99,100,-6,-2147483648,1,144,-66,-2147483648,2,57,58,-6,-2147483648,1,165,-66,-2147483648,2,78,79,-5,-2147483648,2,0,144,-66,-2147483648,2,99,100,-6,-2147483648,1,165,-66,-2147483648,
2,57,58,-6,-2147483648,1,144,-66,-2147483648,2,78,79,-6,-2147483648,1,165,-66,-2147483648,2,99,100,-5,-2147483648,2,0,144,-63,-2147483648,-2,0,3,-2147483648,57,58,-4,-2147483648,-2,0,1,165,-62,-2147483648,-4,0,2,78,79,-5,-2147483648,2,0,144,-62,-2147483648,-4,0,3,99,100,0,-4,-2147483648,2,0,165,-62,-2147483648,-4,0,3,57,58,0,-5,-2147483648,
1,144,-62,-2147483648,-4,0,3,78,79,0,-5,-2147483648,1,165,-6,-2147483648,-4,0,3,-2147483648,0,-2147483648,-3,0,-46,-2147483648,-4,0,3,99,100,0,-5,-2147483648,1,144,-62,-2147483648,-2,0,-2,-2147483648,2,33,34,-6,-2147483648,1,165,-17,-2147483648,1,0,-44,-2147483648,-2,0,-2,-2147483648,2,54,55,-6,-2147483648,2,144,0,-16,-2147483648,1,0,-44,-2147483648,-2,0,
-2,-2147483648,2,75,76,-5,-2147483648,3,0,165,0,-16,-2147483648,1,121,-8,-2147483648,-7,0,-33,-2147483648,2,96,97,-5,-2147483648,3,0,144,138,-16,-2147483648,1,142,-8,-2147483648,-8,0,-31,-2147483648,4,0,39,40,0,-5,-2147483648,19,165,159,160,161,162,160,161,162,160,161,162,160,161,162,160,161,162,162,163,-8,-2147483648,-8,0,-31,-2147483648,4,0,
60,61,0,-5,-2147483648,141,144,180,181,182,181,182,181,182,183,181,182,183,181,182,183,181,182,183,184,215,216,214,215,216,214,215,216,214,215,216,214,214,215,216,214,215,216,214,215,216,214,215,216,214,215,216,214,215,216,214,215,216,214,215,216,214,215,216,214,215,216,214,215,216,214,215,222,81,82,
222,214,215,216,214,222,144,236,237,235,236,237,235,236,237,235,236,237,235,236,237,235,236,237,235,236,237,235,236,237,235,236,237,235,236,237,235,235,236,237,235,236,237,235,236,237,235,236,237,235,236,237,235,236,237,235,236,237,235,236,237,235,236,237,235,236,237,235,236,237,235,236,-4,223,6,
235,236,237,235,243,165,],"TileDataFormat":1,},"tilesetId":{"name":"tl_castle","path":"tilesets/tl_castle/tl_castle.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"CastleBacl","depth":600,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":25,"SerialiseWidth":75,"TileCompressedData":[
-920,-2147483648,8,7,8,9,10,11,12,13,14,-22,-2147483648,8,7,8,9,10,11,12,13,14,-37,-2147483648,8,39,40,41,42,43,44,45,46,-22,-2147483648,8,39,40,41,42,43,44,45,46,-37,-2147483648,8,71,72,73,74,75,76,77,78,-22,-2147483648,8,71,72,73,74,75,76,77,78,-37,-2147483648,8,103,104,105,106,107,108,
109,110,-22,-2147483648,8,103,104,105,106,107,108,109,110,-37,-2147483648,8,135,136,137,138,139,140,141,142,-22,-2147483648,8,135,136,137,138,139,140,141,142,-37,-2147483648,8,167,168,169,170,171,172,173,174,-22,-2147483648,8,167,168,169,170,171,172,173,174,-37,-2147483648,8,199,200,201,202,203,204,205,206,-22,-2147483648,8,199,200,201,202,
203,204,205,206,-37,-2147483648,8,231,232,233,234,235,236,237,238,-22,-2147483648,8,231,232,233,234,235,236,237,238,-37,-2147483648,8,263,264,265,266,267,268,269,270,-22,-2147483648,8,263,264,265,266,267,268,269,270,-37,-2147483648,8,295,296,297,298,299,300,301,302,-22,-2147483648,8,295,296,297,298,299,300,301,302,-37,-2147483648,8,327,328,
329,330,331,332,333,334,-22,-2147483648,8,327,328,329,330,331,332,333,334,-37,-2147483648,8,359,360,361,362,363,364,365,366,-22,-2147483648,8,359,360,361,362,363,364,365,366,-92,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"tl_castleBack","path":"tilesets/tl_castleBack/tl_castleBack.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":700,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":{"name":"spr_bgCastle","path":"sprites/spr_bgCastle/spr_bgCastle.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":true,"x":0,"y":0,},
  ],
  "parent": {
    "name": "Rooms",
    "path": "folders/Rooms.yy",
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