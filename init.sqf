// JIP Check (This code should be placed first line of init.sqf file)
if (!isServer && isNull player) then {isJIP=true;} else {isJIP=false;};

// Wait until player is initialized
if (!isDedicated) then {waitUntil {!isNull player && isPlayer player};};

// INS_revive initialize
[] execVM "INS_revive\revive_init.sqf";

execVM "grenadeStop.sqf";
