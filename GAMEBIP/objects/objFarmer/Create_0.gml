image_speed = 0;
walkSpeed = 1;

// Money
global.money = 100;

// Inventory
global.inv = ds_list_create();

moveX = 0;
moveY = 0;

// *** Create the array of solid collision layers ***
// Use the layer names to get their IDs
walls = layer_tilemap_get_id("walls");
wallsWater = layer_tilemap_get_id("wallsWater");
Houses = layer_tilemap_get_id("Houses");

// Create an array holding all the solid tilemap IDs
collision_layers = [
    walls,
    wallsWater,
    Houses,
];