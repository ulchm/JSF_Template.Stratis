// If you dont want each player to have this menu all the time then put this addAction on an object... like the ammo box.

if (local player) then {
	player addAction ["Rio Gear", "rgm\gui_start.sqf"];
	};
	
rio_helmet = compile preprocessFileLineNumbers "rgm\helmets.sqf";
rio_backpack = compile preprocessFileLineNumbers "rgm\rucks.sqf"; 
rio_clothes = compile preprocessFileLineNumbers "rgm\clothes.sqf"; 
rio_vest = compile preprocessFileLineNumbers "rgm\vests.sqf";
rio_weps = compile preprocessFileLineNumbers "rgm\weapons.sqf";
rio_mags = compile preprocessFileLineNumbers "rgm\mags.sqf";
rio_optic = compile preprocessFileLineNumbers "rgm\optic.sqf";
rio_rail = compile preprocessFileLineNumbers "rgm\rail.sqf";
rio_sup = compile preprocessFileLineNumbers "rgm\sup.sqf"; 