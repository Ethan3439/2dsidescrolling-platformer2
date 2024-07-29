/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 207953D9
/// @DnDComment : 1 would be pressing right$(13_10)-1 would be pressing left $(13_10)0 would be no input
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "keyboard_check(vk_right) - keyboard_check (vk_left)"
/// @DnDArgument : "var" "move_x"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3601123A
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "move_x *walk_speed"
/// @DnDArgument : "var" "move_x"


/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 62A2F1D7
/// @DnDComment : if we are on the ground
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_floor"
/// @DnDSaveInfo : "object" "obj_floor"
var l62A2F1D7_0 = instance_place(x + 0, y + 2, [obj_floor]);
if ((l62A2F1D7_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 004CB1A4
	/// @DnDComment : reset falling speed on movement Y$(13_10)when you landed on the ground
	/// @DnDParent : 62A2F1D7
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 64147BCD
	/// @DnDComment : Is there a floor 30 pixels next to the Enemy.$(13_10)Then jump over it$(13_10)$(13_10)Use the sign of move_x (-1 or 1) $(13_10)to check the direction $(13_10)we are currently moving in$(13_10)(accounts for left as -1 or right as 1) 
	/// @DnDParent : 62A2F1D7
	/// @DnDArgument : "x" "x + (30 * sign (move_x)) "
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_floor"
	/// @DnDSaveInfo : "object" "obj_floor"
	var l64147BCD_0 = instance_place(x + (30 * sign (move_x)) , y + 0, [obj_floor]);
	if ((l64147BCD_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4607911D
		/// @DnDComment : jump
		/// @DnDParent : 64147BCD
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 6C4F7733
	/// @DnDDisabled : 1
	/// @DnDParent : 62A2F1D7


	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 45227A36
	/// @DnDParent : 62A2F1D7
	/// @DnDArgument : "x" "x + (25 * sign(move_x))"
	/// @DnDArgument : "y" "y + 50"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_floor"
	/// @DnDSaveInfo : "object" "obj_floor"
	var l45227A36_0 = instance_place(x + (25 * sign(move_x)), y + y + 50, [obj_floor]);
	if ((l45227A36_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 58EFDF75
		/// @DnDComment : flip movement 
		/// @DnDParent : 45227A36
		/// @DnDArgument : "expr" "move_x * -1"
		/// @DnDArgument : "var" "move_x"
		move_x = move_x * -1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 23A13C7F
		/// @DnDComment : jump
		/// @DnDParent : 45227A36
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2158A5A9
/// @DnDComment : if you're not$(13_10)on the ground
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 24A613DA
	/// @DnDComment : if we are falling after$(13_10)a jump
	/// @DnDParent : 2158A5A9
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(move_y < 10)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 380C28BC
		/// @DnDComment : and gravity
		/// @DnDParent : 24A613DA
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += 1;
	}
}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 2B143612
/// @DnDComment : 1st object is $(13_10)object to avoid
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "walk_speed"
/// @DnDArgument : "maxymove" "jump_speed"
/// @DnDArgument : "object" "obj_floor"
/// @DnDSaveInfo : "object" "obj_floor"
move_and_collide(move_x, move_y, obj_floor,4,0,0,walk_speed,jump_speed);