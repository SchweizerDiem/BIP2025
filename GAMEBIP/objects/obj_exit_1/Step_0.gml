
    if (mouse_check_button_pressed(mb_left)) {
if (position_meeting(mouse_x, mouse_y, id)) {

        if (button_type == "start") {
            room_goto(rm_game); 
        } else if (button_type == "settings") {
            room_goto(rm_credits);
        } else if (button_type == "exit") {
            game_end();
        }
    }
}