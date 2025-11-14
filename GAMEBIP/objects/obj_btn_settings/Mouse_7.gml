/// @description Button is released and action is performed
image_index = 0;

// --- Put the actual button action code here ---
// Example: Change to the next room to start the game
room_goto(rm_mini_levels); 

// OR 
// Example: Set a global variable to start the game sequence
// global.game_started = true;
// instance_destroy(); // Destroy the button