// Draw GUI Event:

var _gui_w = display_get_gui_width();
var _gui_h = display_get_gui_height();

// 2. Calculate the centered position
// Start X = (Screen Width / 2) - (Menu Width / 2)
var _center_x = (_gui_w / 2) - (menu_width / 2);
// Start Y = (Screen Height / 2) - (Menu Height / 2)
var _center_y = (_gui_h / 2) - (menu_height / 2);


// 3. Draw the background window using the calculated center positions
draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_rectangle_color(
    _center_x, 
    _center_y, 
    _center_x + menu_width, 
    _center_y + menu_height, 
    c_black, c_black, c_black, c_black, false
);
// 4. Update all drawing calls to use _center_x and _center_y as their base
draw_set_color(c_white);
draw_text(_center_x + menu_width/2, _center_y + 10, "THE ADVENTURER'S SHOP");

// 2. Loop through and draw all items
for (var i = 0; i < array_length(store_items); i++) {
    var _item_name = store_items[i][0];
    var _item_cost = store_items[i][1];
    var _draw_y = _center_y + 50 + (i * item_spacing);
    
    // Highlight the selected item
    if (i == selected_item) {
        draw_set_color(c_yellow);
    } else {
        draw_set_color(c_white);
    }
    
    // Draw the item name and cost
    draw_text_ext(_center_x + 20, _draw_y, _item_name, -1, menu_width - 40);
    draw_text_ext(_center_x + menu_width - 20, _draw_y, string(_item_cost) + " Gold", -1, 40);
}

// Draw the player's current gold
draw_set_color(c_lime);
draw_text(x + menu_width/2, y + menu_height - 20, "Your Gold: " + string(global.player_gold));

draw_set_color(c_white);
draw_set_halign(fa_left); // Reset alignment