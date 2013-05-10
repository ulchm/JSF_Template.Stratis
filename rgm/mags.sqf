

_pWeap = primaryWeapon player;
_magtype =( getArray (configFile >> "CfgWeapons" >> _pWeap >> "magazines")) select 0;

player addMagazines [_magtype,1];
