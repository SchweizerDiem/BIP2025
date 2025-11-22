// Create Event:

// Store dimensions and position (usually on the GUI layer)
menu_width = 800;
menu_height = 600;
x = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2) - (menu_width / 2);
y = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2) - (menu_height / 2);

// Define the store items, their cost, and what they do
store_items = [
    // [Name, Price, Item_ID_or_Action]
    ["Health Potion", 50, "pot_health"],
    ["Mana Potion", 75, "pot_mana"],
    ["Speed Boost", 100, "item_speed"]
];

item_spacing = 40; // Vertical spacing between items
selected_item = 0; // Index of the currently highlighted item (0, 1, 2, ...)