// Step Event:

// 1. Reset movement variables and handle speed
var _h_spd = 0; // Horizontal speed for this step
var _v_spd = 0; // Vertical speed for this step

if (keyboard_check(vk_shift)) {
    walkSpeed = 2;
} else {
    walkSpeed = 1; // Reset speed if shift is released
}

// 2. Determine intended movement (_h_spd and _v_spd) and set sprite
var _moving = false;

if (keyboard_check(ord("D"))){
    _h_spd = walkSpeed;
    sprite_index = spr_character_walking_right;
    _moving = true;
} else if (keyboard_check(ord("A"))){
    _h_spd = -walkSpeed;
    sprite_index = spr_character_left;
    _moving = true;
}

if (keyboard_check(ord("W"))){
    _v_spd = -walkSpeed;
    sprite_index = spr_character_walking_up;
    _moving = true;
} else if (keyboard_check(ord("S"))){
    _v_spd = walkSpeed;
    sprite_index = spr_character_walking_down;
    _moving = true;
}

// Set animation speed only if moving
if (_moving) {
    image_speed = walkSpeed / 3;
} else {
    image_speed = 0;
    image_index = 0; // Stop and reset animation
}

// Step Event (Collision Check and Movement):

// ... (Movement and sprite code from your original Step Event goes here) ...

// 3. Collision Check and Movement (One axis at a time)

// *** Horizontal Collision Check ***
var _can_move_x = true;
// Loop through every tilemap ID in the collision_layers array
for (var i = 0; i < array_length(collision_layers); i++) {
    var _tilemap_id = collision_layers[i];
    // Check if the next X position would collide with a tile (i.e., tile value != 0)
    if (tilemap_get_at_pixel(_tilemap_id, x + _h_spd, y) != 0) {
        _can_move_x = false;
        break; // Stop checking once a collision is found
    }
}

// Apply movement only if no collision was found
if (_can_move_x) {
    x += _h_spd;
}

// *** Vertical Collision Check ***
var _can_move_y = true;
// Loop through every tilemap ID in the collision_layers array
for (var i = 0; i < array_length(collision_layers); i++) {
    var _tilemap_id = collision_layers[i];
    // Check if the next Y position would collide with a tile (i.e., tile value != 0)
    if (tilemap_get_at_pixel(_tilemap_id, x, y + _v_spd) != 0) {
        _can_move_y = false;
        break; // Stop checking once a collision is found
    }
}

// Apply movement only if no collision was found
if (_can_move_y) {
    y += _v_spd;
}