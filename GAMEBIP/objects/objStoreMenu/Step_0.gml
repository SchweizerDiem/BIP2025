// Step Event:

var _max_index = array_length(store_items) - 1;

// Navigation
if (keyboard_check_pressed(vk_up)) {
    selected_item = max(0, selected_item - 1);
}
if (keyboard_check_pressed(vk_down)) {
    selected_item = min(_max_index, selected_item + 1);
}

// Purchase (Enter key)
if (keyboard_check_pressed(vk_enter)) {
    // Call the purchase function
    var _item_data = store_items[selected_item];
    var _item_name = _item_data[0];
    var _item_cost = _item_data[1];
    var _item_id = _item_data[2];
    
    // Attempt the purchase
    scr_purchase_item(_item_name, _item_cost, _item_id);
}