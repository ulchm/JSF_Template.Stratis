FNC_UPDATE_PLAYER_LIST = {
	private ["_aliveUnits","_unit","_colors","_color"];
	
	_colors = _this select 0;
	
	// Check respawn type
	switch (INS_REV_CFG_respawn_type) do {
		case "ALL": {
			_aliveUnits = call INS_REV_FNCT_getAlivePlayers;
		};
		case "SIDE": {
			_aliveUnits = call INS_REV_FNCT_getAliveFriendlyUnits;
		};
		case "GROUP": {
			_aliveUnits = call INS_REV_FNCT_getAliveFriendlyUnits;
		};
	};
	
	Alive_Players = _aliveUnits;
	
	true
};

FNC_SET_NUMBER_OF_MARKERS = {
	private ["_markers","_count","_markerCount"];
	
	// Set variable
	_markers = _this select 0;
	_count = _this select 1;
	_markerCount = count _markers;
	
	// Check current marker count
	switch true do {
		// If equal
		case (_markerCount == _count): {
			// exit
		};
		case (_markerCount > _count): {
			// Delete marker
			for "_x" from _count to (_markerCount - 1) do {
				_delMarker = _markers select _x;
				deleteMarkerLocal _delMarker; 
				_markers = _markers - [_delMarker];
			};
		};
		case (_markerCount < _count): {
			// Create marker
			for "_x" from _markerCount to (_count - 1) do {
				_marker=createMarkerLocal [format ["pmarker%1",_x],[0,0,0]];
				_marker setMarkerAlphaLocal 0;
				_markers set [_x,_marker];
			};
		};
	};
	
	_markers
};

FNC_SET_NUMBER_OF_MARKERS_SERVERSIDE = {
	private ["_markers","_count","_markerCount"];
	
	// Set variable
	_markers = _this select 0;
	_count = _this select 1;
	_markerCount = count _markers;
	
	// Check current marker count
	switch true do {
		// If equal
		case (_markerCount == _count): {
			// exit
		};
		case (_markerCount > _count): {
			// Delete marker
			for "_x" from _count to (_markerCount - 1) do {
				_delMarker = _markers select _x;
				deleteMarker _delMarker; 
				_markers = _markers - [_delMarker];
			};
		};
		case (_markerCount < _count): {
			// Create marker
			for "_x" from _markerCount to (_count - 1) do {
				_marker=createMarker [format ["pmarker%1",_x],[0,0,0]];
				_marker setMarkerAlpha 0;
				_markers set [_x,_marker];
			};
		};
	};
	
	_markers
};

FNC_SET_PLAYER_MARKER = {
	private ["_unit","_alivePlayers","_marker","_markers","_color","_i","_helo_icon","_plane_icon","_car_icon","_tank_icon","_ship_icon","_static_icon"];
	
	_markers = _this select 0;
	_alivePlayers = Alive_Players;
	_count = count _alivePlayers;
	
	// Set icon
	if (GVAR_is_arma3) then {
		_helo_icon = "c_air";
		_plane_icon = "c_plane";
		_car_icon = "c_car";
		_tank_icon = "n_armor";
		_ship_icon = "c_ship";
		_static_icon = "n_inf";
	} else {
		_helo_icon = "n_air";
		_plane_icon = "n_plane";
		_car_icon = "n_motor_inf";
		_tank_icon = "n_armor";
		_ship_icon = "n_motor_inf";
		_static_icon = "n_inf";
	};
	
	// Syncronize number of markers and aliveplayers count
	_markers = [_markers, count _alivePlayers] call FNC_SET_NUMBER_OF_MARKERS;
	
	// Set player markers
	{
		_unit=_x;
		
		if (!isNull _unit) then {
			// Select marker
			_marker=_markers select (Alive_Players find _unit);
			
			if (_unit==driver vehicle _unit or {_x in vehicle _unit} count Alive_Players == 1) then {
				// Set position
				_marker setMarkerPosLocal getPos vehicle _unit;
				
				// Set marker color
				_color = _unit getVariable "INS_REV_PVAR_playerGroupColor";
				if (isNil "_color") then {_color = "ColorGreen";};
				_marker setMarkerColorLocal _color;
				
				// Set icon and direction
				switch true do {
					case (vehicle _unit isKindOf "Helicopter"): {
						_marker setMarkerTypeLocal _helo_icon;
						_marker setMarkerSizeLocal [0.6,0.6];
						_marker setMarkerDirLocal getDir vehicle _unit;
					};
					case (vehicle _unit isKindOf "Plane"): {
						_marker setMarkerTypeLocal _plane_icon;
						_marker setMarkerSizeLocal [0.6,0.6];
						_marker setMarkerDirLocal getDir vehicle _unit;
					};
					case (vehicle _unit isKindOf "Car"): {
						_marker setMarkerTypeLocal _car_icon;
						_marker setMarkerSizeLocal [0.6,0.6];
						if (GVAR_is_arma3) then {
							_marker setMarkerDirLocal (getDir vehicle _unit) + 90;
						} else {
							_marker setMarkerDirLocal (getDir vehicle _unit);
						};
					};
					case (vehicle _unit isKindOf "Tank"): {
						_marker setMarkerTypeLocal _tank_icon;
						_marker setMarkerSizeLocal [0.6,0.6];
						_marker setMarkerDirLocal getDir vehicle _unit;
					};
					case (vehicle _unit isKindOf "Ship"): {
						_marker setMarkerTypeLocal _ship_icon;
						_marker setMarkerSizeLocal [0.6,0.6];
						if (GVAR_is_arma3) then {
							_marker setMarkerDirLocal (getDir vehicle _unit) + 90;
						} else {
							_marker setMarkerDirLocal (getDir vehicle _unit);
						};
					};
					case (vehicle _unit isKindOf "StaticWeapon"): {
						_marker setMarkerTypeLocal _static_icon;
						_marker setMarkerSizeLocal [0.6,0.6];
						_marker setMarkerDirLocal getDir vehicle _unit;
					};
					default {
						_marker setMarkerTypeLocal "mil_triangle";
						_marker setMarkerSizeLocal [0.3,0.6];
						_marker setMarkerDirLocal getDir vehicle _unit;
					};
				};
				
				// Set name
				_marker setMarkerTextLocal name _x;
				
				// Set alpha
				if (side _unit == WEST) then {
					_marker setMarkerAlphaLocal 1;
				} else {
					_marker setMarkerAlphaLocal 0.7;
				};
			} else {
				_marker setMarkerAlphaLocal 0;
			};
		};
	} forEach _alivePlayers;
	
		_markers
};


FNC_SET_PLAYER_MARKER_SERVER_SIDE = {
	private ["_unit","_alivePlayers","_marker","_markers","_color","_i","_helo_icon","_plane_icon","_car_icon","_tank_icon","_ship_icon","_static_icon"];
	
	_markers = _this select 0;
	_alivePlayers = Alive_Players;
	_count = count _alivePlayers;
	
	// Set icon
	if (GVAR_is_arma3) then {
		_helo_icon = "c_air";
		_plane_icon = "c_plane";
		_car_icon = "c_car";
		_tank_icon = "n_armor";
		_ship_icon = "c_ship";
		_static_icon = "n_inf";
	} else {
		_helo_icon = "n_air";
		_plane_icon = "n_plane";
		_car_icon = "n_motor_inf";
		_tank_icon = "n_armor";
		_ship_icon = "n_motor_inf";
		_static_icon = "n_inf";
	};
	
	// Syncronize number of markers and aliveplayers count
	_markers = [_markers, count _alivePlayers] call FNC_SET_NUMBER_OF_MARKERS_SERVERSIDE;
	
	{
		_unit=_x;
		
		if (!isNull _unit) then {
			// Select marker
			_marker=_markers select (Alive_Players find _unit);
			
			if (_unit==driver vehicle _unit or {_x in vehicle _unit} count Alive_Players == 1) then {
				// Set position
				_marker setMarkerPos getPos vehicle _unit;
				
				// Set marker color
				_color = _unit getVariable "INS_REV_PVAR_playerGroupColor";
				if (isNil "_color") then {_color = "ColorGreen";};
				_marker setMarkerColor _color;
				
				// Set icon and direction
				switch true do {
					case (vehicle _unit isKindOf "Helicopter"): {
						_marker setMarkerType _helo_icon;
						_marker setMarkerSize [0.6,0.6];
						_marker setMarkerDir getDir vehicle _unit;
					};
					case (vehicle _unit isKindOf "Plane"): {
						_marker setMarkerType _plane_icon;
						_marker setMarkerSize [0.6,0.6];
						_marker setMarkerDir getDir vehicle _unit;
					};
					case (vehicle _unit isKindOf "Car"): {
						_marker setMarkerType _car_icon;
						_marker setMarkerSize [0.6,0.6];
						if (GVAR_is_arma3) then {
							_marker setMarkerDir (getDir vehicle _unit) + 90;
						} else {
							_marker setMarkerDir (getDir vehicle _unit);
						};
					};
					case (vehicle _unit isKindOf "Tank"): {
						_marker setMarkerType _tank_icon;
						_marker setMarkerSize [0.6,0.6];
						_marker setMarkerDir getDir vehicle _unit;
					};
					case (vehicle _unit isKindOf "Ship"): {
						_marker setMarkerType _ship_icon;
						_marker setMarkerSize [0.6,0.6];
						if (GVAR_is_arma3) then {
							_marker setMarkerDir (getDir vehicle _unit) + 90;
						} else {
							_marker setMarkerDir (getDir vehicle _unit);
						};
					};
					case (vehicle _unit isKindOf "StaticWeapon"): {
						_marker setMarkerType _static_icon;
						_marker setMarkerSize [0.6,0.6];
						_marker setMarkerDir getDir vehicle _unit;
					};
					default {
						_marker setMarkerType "mil_triangle";
						_marker setMarkerSize [0.3,0.6];
						_marker setMarkerDir getDir vehicle _unit;
					};
				};
				
				// Set name
				_marker setMarkerText name _x;
				
				// Set alpha
				if (side _unit == WEST) then {
					_marker setMarkerAlpha 1;
				} else {
					_marker setMarkerAlpha 0.7;
				};
			} else {
				_marker setMarkerAlpha 0;
			};
		};
	} forEach _alivePlayers;
	
	_markers
};