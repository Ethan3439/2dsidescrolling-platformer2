/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 508A1410
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "move_y > 0 ||move_y < 0 "
/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 3131A0AE
/// @DnDDisabled : 1
/// @DnDParent : 508A1410
/// @DnDArgument : "spriteind" "obj_player_jump "

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 67C8EFAD
/// @DnDComment : are you in the air
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_floor"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "object" "obj_floor"
var l67C8EFAD_0 = instance_place(x + 0, y + 2, [obj_floor]);
if (!(l67C8EFAD_0 > 0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4939BA0C
	/// @DnDParent : 67C8EFAD
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_player_jump"
	/// @DnDSaveInfo : "spriteind" "spr_player_jump"
	sprite_index = spr_player_jump;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 53DD82D4
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4C969F88
	/// @DnDComment : if moving left
	/// @DnDParent : 53DD82D4
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "-1"
	if(move_x <= -1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 7758224B
		/// @DnDParent : 4C969F88
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_player_walk"
		/// @DnDSaveInfo : "spriteind" "spr_player_walk"
		sprite_index = spr_player_walk;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 07CE8324
		/// @DnDComment : flip
		/// @DnDParent : 4C969F88
		/// @DnDArgument : "xscale" "abs(image_xscale)"
		/// @DnDArgument : "yscale" "image_yscale"
		image_xscale = abs(image_xscale);
		image_yscale = image_yscale;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2615D707
	/// @DnDComment : if moving right
	/// @DnDParent : 53DD82D4
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1"
	if(move_x >= 1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 7F815D07
		/// @DnDParent : 2615D707
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_player_walk"
		/// @DnDSaveInfo : "spriteind" "spr_player_walk"
		sprite_index = spr_player_walk;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 42EEB436
		/// @DnDParent : 2615D707
		/// @DnDArgument : "xscale" "-1 * abs(image_xscale)"
		/// @DnDArgument : "yscale" "image_yscale"
		image_xscale = -1 * abs(image_xscale);
		image_yscale = image_yscale;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2507016A
	/// @DnDParent : 53DD82D4
	/// @DnDArgument : "var" "move_x"
	if(move_x == 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 402E2D47
		/// @DnDParent : 2507016A
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_enemy"
		/// @DnDSaveInfo : "spriteind" "spr_enemy"
		sprite_index = spr_enemy;
		image_index += 0;
	}
}