/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 207953D9
/// @DnDComment : 1 would be pressing right$(13_10)-1 would be pressing left $(13_10)0 would be no input  
/// @DnDArgument : "expr" "keyboard_check(vk_right) - keyboard_check (vk_left)"
/// @DnDArgument : "var" "move_x"
move_x = keyboard_check(vk_right) - keyboard_check (vk_left);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3601123A
/// @DnDArgument : "expr" "move_x *walk_speed"
/// @DnDArgument : "var" "move_x"
move_x = move_x *walk_speed;