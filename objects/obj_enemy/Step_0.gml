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
	/// @DnDHash : 4F9D8D49
	/// @DnDComment : Is there a floor next to the enemy)$(13_10)Then jump over it!$(13_10)$(13_10)Use the sign of move_x (-1 or 1) $(13_10)to check the direction we are $(13_10)currently moving in (accounts for $(13_10)left as -1 or right as 1)
	/// @DnDParent : 62A2F1D7
	/// @DnDArgument : "x" "x + (25 * sign(move_x))"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_floor"
	/// @DnDSaveInfo : "object" "obj_floor"
	var l4F9D8D49_0 = instance_place(x + (25 * sign(move_x)), y + 0, [obj_floor]);
	if ((l4F9D8D49_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 42DF6953
		/// @DnDComment : jump
		/// @DnDParent : 4F9D8D49
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 1A2A9ACD
	/// @DnDComment : Is there a floor next to the enemy)$(13_10)Then jump over it!$(13_10)$(13_10)Use the sign of move_x (-1 or 1) $(13_10)to check the direction we are $(13_10)currently moving in (accounts for $(13_10)left as -1 or right as 1)
	/// @DnDParent : 62A2F1D7
	/// @DnDArgument : "x" "x + (30 * sign(move_x))"
	/// @DnDArgument : "y" "y + 50"
	/// @DnDArgument : "object" "obj_floor"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "object" "obj_floor"
	var l1A2A9ACD_0 = instance_place(x + (30 * sign(move_x)), y + 50, [obj_floor]);
	if (!(l1A2A9ACD_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 27C67F9F
		/// @DnDComment : jump
		/// @DnDParent : 1A2A9ACD
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 45B778CD
		/// @DnDComment : flips movement
		/// @DnDParent : 1A2A9ACD
		/// @DnDArgument : "expr" "move_x * -1 "
		/// @DnDArgument : "var" "move_x"
		move_x = move_x * -1 ;
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