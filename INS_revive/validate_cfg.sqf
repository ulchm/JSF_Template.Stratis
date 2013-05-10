//------------------
// Validate Config
//------------------

// Remove null object in array
// Usage : '[array] call INS_REV_FNCT_remove_null_objects;'
// Return : array
INS_REV_FNCT_remove_null_objects = {
	private ["_arr", "_result"];
	
	_arr = _this select 0;
	_result = [];
	{
		if (!isNull call compile format["%1",_x]) then {
			_result = _result + [_x];
		};
	} forEach _arr;
	
	_result
};

// Get param value(number), return bool value
// Usage : '[param] call INS_REV_FNCT_param_to_value;'
// Return : bool
INS_REV_FNCT_param_to_value = {
	private ["_value", "_result"];
	
	_value = _this select 0;
	_result = true;
	
	if (_value == 0) then {
		_result = false;
	};
	
	_result
};

INS_REV_CFG_list_of_respawn_locations_blufor = [INS_REV_CFG_list_of_respawn_locations_blufor] call INS_REV_FNCT_remove_null_objects;
INS_REV_CFG_list_of_respawn_locations_opfor = [INS_REV_CFG_list_of_respawn_locations_opfor] call INS_REV_FNCT_remove_null_objects;
INS_REV_CFG_list_of_ammobox = [INS_REV_CFG_list_of_ammobox] call INS_REV_FNCT_remove_null_objects;

// Get parameter value from description.ext
for [ {_i = 0}, {_i < count(paramsArray)}, {_i = _i + 1} ] do
{
	call compile format 
	[
		"%1 = %2",
		(configName ((missionConfigFile >> "Params") select _i)),
		(paramsArray select _i)
	];
};

// ALLOW TO REVIVE
if (!isNil "INS_REV_PARAM_allow_revive") then {
	// Everyone
	if (INS_REV_PARAM_allow_revive == 0) then {
		INS_REV_CFG_all_player_can_revive = true;
	} else {
		// Medic Only
		if (INS_REV_PARAM_allow_revive == 1) then {
			INS_REV_CFG_all_player_can_revive = false;
			INS_REV_CFG_all_medics_can_revive = true;
		// Pre-Defined
		} else {
			INS_REV_CFG_all_player_can_revive = false;
			INS_REV_CFG_all_medics_can_revive = false;
		};
	};
} else {
	if (isNil "INS_REV_CFG_all_player_can_revive") then {
		INS_REV_CFG_all_player_can_revive = true;
	};
};

// RESPAWN DELAY TIME
if (!isNil "INS_REV_PARAM_respawn_delay") then {
	INS_REV_CFG_respawn_delay = INS_REV_PARAM_respawn_delay;
} else {
	if (isNil "INS_REV_CFG_respawn_delay") then {
		INS_REV_CFG_respawn_delay = 120;
	};
};

// LIFE TIME FOR REVIVE
if (!isNil "INS_REV_PARAM_life_time") then {
	INS_REV_CFG_life_time = INS_REV_PARAM_life_time;
} else {
	if (isNil "INS_REV_CFG_life_time") then {
		INS_REV_CFG_life_time = 300;
	};
};

// TAKE TIME TO REVIVE
if (!isNil "INS_REV_PARAM_revive_take_time") then {
	INS_REV_CFG_revive_take_time = INS_REV_PARAM_revive_take_time;
} else {
	if (isNil "INS_REV_CFG_revive_take_time") then {
		INS_REV_CFG_revive_take_time = 15;
	};
};

// REQUIRES MEDKIT TO REVIVE
if (!isNil "INS_REV_PARAM_require_medkit") then {
	INS_REV_CFG_require_medkit = [INS_REV_PARAM_require_medkit] call INS_REV_FNCT_param_to_value;
} else {
	if (isNil "INS_REV_CFG_require_medkit") then {
		INS_REV_CFG_require_medkit = false;
	};
};

// PLAYER RESPAWN TYPE
if (!isNil "INS_REV_PARAM_respawn_type") then {
	switch (INS_REV_PARAM_respawn_type) do {
		case 0: {
			// ALL
			INS_REV_CFG_respawn_type = "ALL";
		};
		case 1: {
			// SIDE
			INS_REV_CFG_respawn_type = "SIDE";
		};
		case 2: {
			// GROUP
			INS_REV_CFG_respawn_type = "GROUP";
		};
	};
} else {
	if (isNil "INS_REV_CFG_respawn_type") then {
		INS_REV_CFG_respawn_type = "ALL";
	};
};

// PLAYER RESPAWN LOCATION
if (!isNil "INS_REV_PARAM_respawn_location") then {
	switch (INS_REV_PARAM_respawn_location) do {
		case 0: {
			// Base + Alive friendly unit
			INS_REV_CFG_respawn_location = "BOTH";
		};
		case 1: {
			// Base
			INS_REV_CFG_respawn_location = "BASE";
		};
		case 2: {
			// Alive Friendly Unit
			INS_REV_CFG_respawn_location = "FRIENDLY_UNIT";
		};
	};
} else {
	if (isNil "INS_REV_CFG_respawn_location") then {
		INS_REV_CFG_respawn_location = "BOTH";
	};
};

// JIP TELEPORT ACTION
if (!isNil "INS_REV_PARAM_jip_action") then {
	INS_REV_CFG_JIP_Teleport_Action = [INS_REV_PARAM_jip_action] call INS_REV_FNCT_param_to_value;
} else {
	if (isNil "INS_REV_CFG_JIP_Teleport_Action") then {
		INS_REV_CFG_JIP_Teleport_Action = true;
	};
};

// ALLOW TO DRAG BODY
if (!isNil "INS_REV_PARAM_can_drag_body") then {
	INS_REV_CFG_player_can_drag_body = [INS_REV_PARAM_can_drag_body] call INS_REV_FNCT_param_to_value;
} else {
	if (isNil "INS_REV_CFG_player_can_drag_body") then {
		INS_REV_CFG_player_can_drag_body = true;
	};
};

// Allow to load Body (MEDEVAC)
if (!isNil "INS_REV_PARAM_medevac") then {
	INS_REV_CFG_medevac = [INS_REV_PARAM_medevac] call INS_REV_FNCT_param_to_value;
} else {
	if (isNil "INS_REV_CFG_medevac") then {
		INS_REV_CFG_medevac = true;
	};
};

// PLAYER CAN RESPAWN PLAYER's BODY
if (!isNil "INS_REV_PARAM_can_respawn_player_body") then {
	INS_REV_CFG_can_respawn_player_body = [INS_REV_PARAM_can_respawn_player_body] call INS_REV_FNCT_param_to_value;
} else {
	if (isNil "INS_REV_CFG_can_respawn_player_body") then {
		INS_REV_CFG_can_respawn_player_body = false;
	};
};

// PLAYER CAN RESPAWN PLAYER's BODY, WHEN HALF OF PLAYERS ARE DEAD
if (!isNil "INS_REV_PARAM_half_dead_repsawn_player_body") then {
	INS_REV_CFG_half_dead_repsawn_player_body = [INS_REV_PARAM_half_dead_repsawn_player_body] call INS_REV_FNCT_param_to_value;
} else {
	if (isNil "INS_REV_CFG_half_dead_repsawn_player_body") then {
		INS_REV_CFG_half_dead_repsawn_player_body = false;
	};
};

// PLAYER CAN RESPAWN IMMEDIATELY WHEN THERE'S NOT EXIST FRIENDLY UNIT NEAR PLAYER
if (!isNil "INS_REV_PARAM_near_friendly") then {
	INS_REV_CFG_respawn_near_friendly = [INS_REV_PARAM_near_friendly] call INS_REV_FNCT_param_to_value;
} else {
	if (isNil "INS_REV_CFG_respawn_near_friendly") then {
		INS_REV_CFG_respawn_near_friendly = false;
	};
};

// PLAYER CAN RESPAWN IMMEDIATELY WHEN ALL PLAYERS ARE DEAD
if (!isNil "INS_REV_PARAM_all_dead_respawn") then {
	INS_REV_CFG__all_dead_respawn = [INS_REV_PARAM_all_dead_respawn] call INS_REV_FNCT_param_to_value;
} else {
	if (isNil "INS_REV_CFG__all_dead_respawn") then {
		INS_REV_CFG__all_dead_respawn = true;
	};
};

// Friendly unit search distnace
if (!isNil "INS_REV_PARAM_near_friendly_distance") then {
	INS_REV_CFG_respawn_near_friendly_range = INS_REV_PARAM_near_friendly_distance;
} else {
	if (isNil "INS_REV_CFG_respawn_near_friendly_range") then {
		INS_REV_CFG_respawn_near_friendly_range = 50;
	};
};

// Teamkiller Lock System
if (!isNil "INS_REV_PARAM_teamkiller_lock") then {
	INS_REV_CFG_teamkiller_lock = [INS_REV_PARAM_teamkiller_lock] call INS_REV_FNCT_param_to_value;
} else {
	if (isNil "INS_REV_CFG_teamkiller_lock") then {
		INS_REV_CFG_teamkiller_lock = true;
	};
};

// Teamkill Limit
if (!isNil "INS_REV_PARAM_teamkill_limit") then {
	INS_REV_CFG_teamkill_limit = INS_REV_PARAM_teamkill_limit;
} else {
	if (isNil "INS_REV_CFG_teamkill_limit") then {
		INS_REV_CFG_teamkill_limit = 3;
	};
};

// Virtual Ammobox System
if (!isNil "INS_REV_PARAM_virtual_ammobox") then {
	INS_REV_CFG_virtual_ammobox = [INS_REV_PARAM_virtual_ammobox] call INS_REV_FNCT_param_to_value;
} else {
	if (isNil "INS_REV_CFG_virtual_ammobox") then {
		INS_REV_CFG_virtual_ammobox = true;
	};
};

// - Restore loadout on respawn
if (!isNil "INS_REV_PARAM_vas_on_respawn") then {
	INS_REV_CFG_vas_on_respawn = [INS_REV_PARAM_vas_on_respawn] call INS_REV_FNCT_param_to_value;
} else {
	if (isNil "INS_REV_CFG_vas_on_respawn") then {
		INS_REV_CFG_vas_on_respawn = true;
	};
};

// TAW View Distance Script
if (!isNil "INS_REV_PARAM_taw_view") then {
	INS_REV_CFG_taw_view = [INS_REV_PARAM_taw_view] call INS_REV_FNCT_param_to_value;
} else {
	if (isNil "INS_REV_CFG_taw_view") then {
		INS_REV_CFG_taw_view = true;
	};
};

// DOM Repair
if (!isNil "INS_REV_PARAM_repair_system") then {
	INS_REV_CFG_dom_repair = [INS_REV_PARAM_repair_system] call INS_REV_FNCT_param_to_value;
} else {
	// Default
	INS_REV_CFG_dom_repair = true;
};

// Repair delay time
if (!isNil "INS_REV_PARAM_repair_system_delay") then {
	INS_REV_CFG_dom_repair_delay = INS_REV_PARAM_repair_system_delay;
} else {
	// Default
	INS_REV_CFG_dom_repair_delay = 120;
};

// Manual NV Goggle sensitivity
if (!isNil "INS_REV_PARAM_s_nvg") then {
	INS_REV_CFG_s_nvg = [INS_REV_PARAM_s_nvg] call INS_REV_FNCT_param_to_value;
} else {
	// Default
	INS_REV_CFG_s_nvg = true;
};

// Player Name Tag
if (!isNil "INS_REV_PARAM_name_tag") then {
	INS_REV_CFG_name_tag = [INS_REV_PARAM_name_tag] call INS_REV_FNCT_param_to_value;
} else {
	// Default
	INS_REV_CFG_name_tag = true;
};

// Player Marker
if (!isNil "INS_REV_PARAM_player_marker") then {
	INS_REV_CFG_player_marker = [INS_REV_PARAM_player_marker] call INS_REV_FNCT_param_to_value;
} else {
	// Default
	INS_REV_CFG_player_marker = true;
};

// Player Marker Process Method
if (!isNil "INS_REV_PARAM_player_marker_method") then {
	INS_REV_CFG_player_marker_serverSide = [INS_REV_PARAM_player_marker_method] call INS_REV_FNCT_param_to_value;
} else {
	// Default
	INS_REV_CFG_player_marker_serverSide = true;
};
// Override player marker process method depend on Respawn Faction
if (INS_REV_CFG_respawn_type != "ALL") then {
	INS_REV_CFG_player_marker_serverSide = false;
};

// Personal UAV
if (!isNil "INS_REV_PARAM_uav_recon") then {
	INS_REV_CFG_personal_uav = [INS_REV_PARAM_uav_recon] call INS_REV_FNCT_param_to_value;
} else {
	// Default
	INS_REV_CFG_personal_uav = true;
};

// Personal UAV enemy marker
if (!isNil "INS_REV_PARAM_uav_recon_enemy_marker") then {
	INS_REV_CFG_personal_uav_enemy_marker = [INS_REV_PARAM_uav_recon_enemy_marker] call INS_REV_FNCT_param_to_value;
} else {
	// Default
	INS_REV_CFG_personal_uav_enemy_marker = false;
};

// UAV Briefing
if (!isNil "INS_REV_PARAM_uav_briefing") then {
	INS_REV_CFG_uav_briefing = [INS_REV_PARAM_uav_briefing] call INS_REV_FNCT_param_to_value;
} else {
	// Default
	INS_REV_CFG_uav_briefing = false;
};