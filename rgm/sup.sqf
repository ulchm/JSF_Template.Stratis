if (isNil ("sup_index")) then {sup_index = 0;};
_sups = ["muzzle_snds_H","muzzle_snds_L","muzzle_snds_B","muzzle_snds_H_MG"];
_direction =_this select 0;

switch (_direction) do
{
    case 0:
    {
	
		sup_index = sup_index - 1;
		if (sup_index < 0 ) then {sup_index = 0;};
        _sup = _sups select sup_index;
		
		player addPrimaryWeaponItem _sup;
		
		hint parseText format ["<t align='center' color='#f39403' shadow='1' shadowColor='#000000'>'%2'</t><br/><t align='center' color='#666666'>------------------------------</t><br/><br/><t align='center' color='#666c3f' shadow='1' shadowColor='#000000'><img size='4' image='%1'/></t><br/><br/><t align='center' color='#ffcc33' shadow='1' shadowColor='#000000'></t><br/><br/><t align='center' color='#ffffff' shadow='1' shadowColor='#000000'></t>", getText (configFile >> "cfgWeapons" >> _sup >> "picture"),getText (configFile >> "cfgWeapons" >> _sup >> "displayname")];
		
    };

    case 1:
    {
        sup_index = sup_index + 1;
		if (sup_index > count _sups) then {sup_index = 0;};
        _sup = _sups select sup_index;
		
		player addPrimaryWeaponItem _sup;
		
		hint parseText format ["<t align='center' color='#f39403' shadow='1' shadowColor='#000000'>'%2'</t><br/><t align='center' color='#666666'>------------------------------</t><br/><br/><t align='center' color='#666c3f' shadow='1' shadowColor='#000000'><img size='4' image='%1'/></t><br/><br/><t align='center' color='#ffcc33' shadow='1' shadowColor='#000000'></t><br/><br/><t align='center' color='#ffffff' shadow='1' shadowColor='#000000'></t>", getText (configFile >> "cfgWeapons" >> _sup >> "picture"),getText (configFile >> "cfgWeapons" >> _sup >> "displayname")];
    };
};