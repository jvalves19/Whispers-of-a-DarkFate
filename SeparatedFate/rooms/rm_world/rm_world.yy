{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "rm_world",
  "isDnd": false,
  "volume": 1.0,
  "parentRoom": null,
  "views": [
    {"inherit":false,"visible":true,"xview":0,"yview":0,"wview":500,"hview":400,"xport":0,"yport":0,"wport":1920,"hport":1080,"hborder":600,"vborder":64,"hspeed":-1,"vspeed":-1,"objectId":{"name":"obj_camera","path":"objects/obj_camera/obj_camera.yy",},},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
  ],
  "layers": [
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Game_Controller","instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_656DB7A3","properties":[],"isDnd":false,"objectId":{"name":"obj_pause","path":"objects/obj_pause/obj_pause.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":32.0,"y":64.0,},
      ],"visible":true,"depth":-300,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Sensing","instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_4C23D812","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"destination","path":"objects/obj_sensor/obj_sensor.yy",},"objectId":{"name":"obj_sensor","path":"objects/obj_sensor/obj_sensor.yy",},"value":"rm_firstBoss2",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"destionation_x","path":"objects/obj_sensor/obj_sensor.yy",},"objectId":{"name":"obj_sensor","path":"objects/obj_sensor/obj_sensor.yy",},"value":"928",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"destionation_y","path":"objects/obj_sensor/obj_sensor.yy",},"objectId":{"name":"obj_sensor","path":"objects/obj_sensor/obj_sensor.yy",},"value":"320",},
          ],"isDnd":false,"objectId":{"name":"obj_sensor","path":"objects/obj_sensor/obj_sensor.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":0.5,"scaleY":0.75,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":184.0,"y":176.0,},
      ],"visible":true,"depth":-200,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":8,"gridY":16,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Tile_PropsTop","tilesetId":{"name":"tl_World","path":"tilesets/tl_World/tl_World.yy",},"x":0,"y":0,"tiles":{"TileDataFormat":1,"SerialiseWidth":50,"SerialiseHeight":32,"TileCompressedData":[
-210,0,3,925,926,927,-47,0,3,957,958,959,-47,0,3,989,990,991,-1287,0,],},"visible":true,"depth":-100,"userdefinedDepth":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Collision","instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_2B2AFFFA_1","properties":[],"isDnd":false,"objectId":{"name":"obj_block","path":"objects/obj_block/obj_block.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":24.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":64.0,"y":0.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_64518BA2_1","properties":[],"isDnd":false,"objectId":{"name":"obj_block","path":"objects/obj_block/obj_block.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":41.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":-84.0,"y":512.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_7AC2D274_1","properties":[],"isDnd":false,"objectId":{"name":"obj_block","path":"objects/obj_block/obj_block.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":24.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":1184.0,"y":0.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_569255BA_1","properties":[],"isDnd":false,"objectId":{"name":"obj_block","path":"objects/obj_block/obj_block.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":41.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":-64.0,"y":32.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_43441352","properties":[],"isDnd":false,"objectId":{"name":"obj_block","path":"objects/obj_block/obj_block.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0625,"scaleY":1.375,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":166.0,"y":100.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_1B601ED8","properties":[],"isDnd":false,"objectId":{"name":"obj_block","path":"objects/obj_block/obj_block.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":0.625,"scaleY":0.625,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":266.0,"y":156.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_553B8D83","properties":[],"isDnd":false,"objectId":{"name":"obj_block","path":"objects/obj_block/obj_block.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.6249999,"scaleY":5.25,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":492.0,"y":60.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_69C0CF4B","properties":[],"isDnd":false,"objectId":{"name":"obj_block","path":"objects/obj_block/obj_block.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.75,"scaleY":1.875,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":488.0,"y":264.0,},
      ],"visible":true,"depth":0,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":2,"gridY":4,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","instances":[],"visible":true,"depth":100,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Tiles_FakeDepth","tilesetId":null,"x":0,"y":0,"tiles":{"SerialiseWidth":0,"SerialiseHeight":0,"TileSerialiseData":[
],},"visible":true,"depth":200,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Tile_Props","tilesetId":{"name":"tl_World","path":"tilesets/tl_World/tl_World.yy",},"x":0,"y":0,"tiles":{"TileDataFormat":1,"SerialiseWidth":50,"SerialiseHeight":32,"TileCompressedData":[
-360,0,3,1021,1022,1023,-157,0,3,525,526,527,-47,0,3,557,558,559,-1027,0,],},"visible":true,"depth":300,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Tile_Grave","tilesetId":{"name":"tl_WGrave","path":"tilesets/tl_WGrave/tl_WGrave.yy",},"x":0,"y":0,"tiles":{"TileDataFormat":1,"SerialiseWidth":75,"SerialiseHeight":47,"TileCompressedData":[
-460,41,4,8,9,10,11,-71,41,4,20,21,22,23,-71,41,4,32,33,34,35,-71,41,4,44,45,46,47,-71,41,-4,0,-1556,41,-5,-2147483648,-70,41,-5,-2147483648,-70,41,-5,-2147483648,-70,41,-25,-2147483648,-40,41,-35,-2147483648,-40,41,-35,-2147483648,-40,41,-35,-2147483648,-40,41,-35,-2147483648,-40,41,-35,-2147483648,-40,41,-35,-2147483648,-40,41,-465,
-2147483648,],},"visible":true,"depth":400,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Tile_Ground","tilesetId":{"name":"tl_World","path":"tilesets/tl_World/tl_World.yy",},"x":0,"y":0,"tiles":{"TileDataFormat":1,"SerialiseWidth":50,"SerialiseHeight":32,"TileCompressedData":[
-19,0,6,117,118,119,117,118,119,-44,0,6,117,118,119,117,118,119,-28,0,1,85,-15,86,6,55,22,151,117,118,54,-25,86,-3,0,1,117,-16,118,3,119,391,117,-27,118,-3,0,1,117,-16,
118,3,119,391,117,-27,118,-3,0,1,117,-16,118,3,390,451,392,-27,118,-3,0,1,117,-16,118,3,390,391,392,-27,118,-3,0,6,117,118,118,549,550,551,-11,118,3,390,391,392,-27,118,-3,0,
6,117,118,118,581,582,583,-11,118,3,390,451,392,-27,118,-3,0,6,117,118,118,581,582,583,-11,118,3,390,391,392,-27,118,-3,0,6,117,118,118,581,582,518,-10,550,4,551,390,391,392,-27,118,
-3,0,4,117,118,118,581,-12,582,4,583,390,391,392,-27,118,-3,0,4,117,118,118,613,-12,614,4,615,390,451,392,-27,118,-3,0,1,117,-16,118,3,422,423,424,-27,118,-3,0,1,117,-46,118,
-3,0,1,117,-46,118,-3,0,1,117,-46,118,-3,0,1,117,-46,118,-3,0,1,117,-46,118,-3,0,1,117,-46,118,-3,0,1,117,-46,118,-3,0,1,149,-46,150,-500,0,],},"visible":true,"depth":500,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Tile_Water","tilesetId":{"name":"tl_World","path":"tilesets/tl_World/tl_World.yy",},"x":0,"y":0,"tiles":{"TileDataFormat":1,"SerialiseWidth":50,"SerialiseHeight":32,"TileCompressedData":[
-10,391,-2,451,-14,391,-2,451,-2,391,-2,451,-5,391,-2,451,-21,391,-2,451,-14,391,-2,451,-2,391,-2,451,-5,391,-2,451,-1511,391,],},"visible":true,"depth":600,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","spriteId":null,"colour":4294967295,"x":0,"y":0,"htiled":true,"vtiled":false,"hspeed":0.0,"vspeed":0.0,"stretch":false,"animationFPS":30.0,"animationSpeedType":0,"userdefinedAnimFPS":false,"visible":true,"depth":700,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
  ],
  "inheritLayers": false,
  "creationCodeFile": "",
  "inheritCode": false,
  "instanceCreationOrder": [
    {"name":"inst_2B2AFFFA_1","path":"rooms/rm_world/rm_world.yy",},
    {"name":"inst_64518BA2_1","path":"rooms/rm_world/rm_world.yy",},
    {"name":"inst_7AC2D274_1","path":"rooms/rm_world/rm_world.yy",},
    {"name":"inst_569255BA_1","path":"rooms/rm_world/rm_world.yy",},
    {"name":"inst_4C23D812","path":"rooms/rm_world/rm_world.yy",},
    {"name":"inst_656DB7A3","path":"rooms/rm_world/rm_world.yy",},
    {"name":"inst_43441352","path":"rooms/rm_world/rm_world.yy",},
    {"name":"inst_1B601ED8","path":"rooms/rm_world/rm_world.yy",},
    {"name":"inst_553B8D83","path":"rooms/rm_world/rm_world.yy",},
    {"name":"inst_69C0CF4B","path":"rooms/rm_world/rm_world.yy",},
  ],
  "inheritCreationOrder": false,
  "sequenceId": null,
  "roomSettings": {
    "inheritRoomSettings": false,
    "Width": 1200,
    "Height": 750,
    "persistent": false,
  },
  "viewSettings": {
    "inheritViewSettings": false,
    "enableViews": true,
    "clearViewBackground": false,
    "clearDisplayBuffer": true,
  },
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "parent": {
    "name": "Rooms",
    "path": "folders/Rooms.yy",
  },
}