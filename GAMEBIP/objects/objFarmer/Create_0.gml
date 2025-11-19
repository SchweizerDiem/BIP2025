image_speed = 0;
walkSpeed = 1;

moveX = 0;
moveY = 0;

// *** Create the array of solid collision layers ***
// Use the layer names to get their IDs
walls = layer_tilemap_get_id("walls");
wallsWater = layer_tilemap_get_id("wallsWater");
Houses = layer_tilemap_get_id("Houses"); // Assuming Houses is also solid

// Create an array holding all the solid tilemap IDs
collision_layers = [
    walls,
    wallsWater,
    Houses
];