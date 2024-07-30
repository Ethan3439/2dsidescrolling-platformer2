/// @DnDAction : YoYo Games.Movement.Jump_To_Start
/// @DnDVersion : 1
/// @DnDHash : 6C94325D
/// @DnDComment : Place the button back where it started when $(13_10)this alarm is called.   
x = xstart;
y = ystart;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 5A6BFDE7
/// @DnDArgument : "steps" "10"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 10);