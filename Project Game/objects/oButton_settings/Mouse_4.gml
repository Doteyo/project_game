/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 361DFC73
event_inherited();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 21855DEF
/// @DnDArgument : "soundid" "sfxClick"
/// @DnDSaveInfo : "soundid" "sfxClick"
audio_play_sound(sfxClick, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Rooms.Go_To_Room
/// @DnDVersion : 1
/// @DnDHash : 206892BC
/// @DnDArgument : "room" "rmMenu_settings"
/// @DnDSaveInfo : "room" "rmMenu_settings"
room_goto(rmMenu_settings);