/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6374D1E7
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "timesframe"
timesframe += -1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 11B5A807
/// @DnDArgument : "var" "timesframe"
/// @DnDArgument : "op" "2"
if(timesframe > 0)
{

}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 7C2301EE
/// @DnDArgument : "steps" "60"
alarm_set(0, 60);