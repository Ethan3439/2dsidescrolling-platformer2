/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 45B3793C
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 625FFC32
/// @DnDArgument : "font" "font_open_sans"
/// @DnDSaveInfo : "font" "font_open_sans"
draw_set_font(font_open_sans);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 556FCB58
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle "
draw_set_halign(fa_center);
draw_set_valign(fa_middle );

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 4A7ED3B4
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "btn_text"
draw_text(x + 0, y + 0,  + string(btn_text));

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 029BFF81
/// @DnDComment : reset alignment sfter new draw to prevent $(13_10)tissues later if a new draw occurs. 
draw_set_halign(fa_left);
draw_set_valign(fa_top);