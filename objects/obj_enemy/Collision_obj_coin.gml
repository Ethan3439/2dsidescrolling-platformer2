/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 697120F9
/// @DnDComment : spawn visual fx
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "5"
/// @DnDArgument : "size" "2"
/// @DnDArgument : "color" "$FFAEB259"
effect_create_below(5, x + 0, y + 0, 2, $FFAEB259 & $ffffff);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 6F32C231
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 616C4294
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "coins"
coins += 1;

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 13BF3E46
/// @DnDArgument : "msg" "coins"
show_debug_message(string(coins));