// Shop variables
shopOpen = false; // Is this shop open?
global.shop = false; // Is any shop open?

selected = 0;
selectedAnim = 0;

// Items
items = ds_list_create();

ds_list_add(items, ["apple", 10, "Replenish HP"]);
ds_list_add(items, ["water", 30, "Quenches thirsty"]);
ds_list_add(items, ["thing", 60, "Does something."]);

itemCount = ds_list_size(items);

// GUI
guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();

menuWidth = guiWidth * 0.3;
menuMargin = guiWidth * 0.1;

previewWidth = (guiWidth - (menuWidth+menuMargin));