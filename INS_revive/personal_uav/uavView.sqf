private ["_colorWest","_colorEast","_markerArray","_icon","_markerColor","_size","_unitName"];

// set side colors
_colorWest = WEST call BIS_fnc_sideColor;
_colorEast = EAST call BIS_fnc_sideColor;

// set transparency for colors
{_x set [3, 0.4]} forEach [_colorWest, _colorEast];

_markerArray = [
	["a3\ui_f\data\map\groupIcons\selector_selectedFriendly_ca.paa", _colorWest, player, 2, 2, 0, "", 0]
	//["\a3\ui_f\data\map\markers\nato\b_inf.paa", _colorWest, player, 1, 1, 0, name player, 0]
];

{
	if (alive _x) then {
		if ([_x] call FNC_IS_DISPLAY_MARKER) then {
			_icon = [_x] call FNC_SET_UNIT_MARKER;
			
			_markerColor = _colorEast;
			if (side _x == WEST) then {
				_markerColor = _colorWest;
			};
			
			_size = 0.5;
			if (rankId _x > 1 || _x != vehicle _x) then {
				_size = 1;
			};
			
			_unitName = "";
			if (isPlayer _x) then {
				_unitName = name _x;
			};
			
			_markerArray = _markerArray + [[_icon, _markerColor, _x, _size, _size, 0, _unitName, 1]];
		};
	};
} forEach allUnits;

[
	vehicle player,
	format ["OPERATOR: %1||Press SPACE to EXIT|Press NUM 1 - 9 to switch viewing modes|", name player],
	300,
	230,
	180 - getDir vehicle player,
	1,
	_markerArray
] call AW_fnc_establishingShot;
