if (isNil ("optic_index")) then {optic_index = 0;};
_optics = ["optic_Arco", "optic_Hamr", "optic_Aco", "optic_ACO_grn", "optic_Holosight"];
_direction =_this select 0;

switch (_direction) do
{
    case 0:
    {
	
		optic_index = optic_index - 1;
		if (optic_index < 0 ) then {optic_index = 0;};
        _optic = _optics select optic_index;
		
		player addPrimaryWeaponItem _optic;
		
		hint parseText format ["<t align='center' color='#f39403' shadow='1' shadowColor='#000000'>'%2'</t><br/><t align='center' color='#666666'>------------------------------</t><br/><br/><t align='center' color='#666c3f' shadow='1' shadowColor='#000000'><img size='4' image='%1'/></t><br/><br/><t align='center' color='#ffcc33' shadow='1' shadowColor='#000000'></t><br/><br/><t align='center' color='#ffffff' shadow='1' shadowColor='#000000'></t>", getText (configFile >> "cfgWeapons" >> _optic >> "picture"),getText (configFile >> "cfgWeapons" >> _optic >> "displayname")];
		
    };

    case 1:
    {
        optic_index = optic_index + 1;
		if (optic_index > count _rucks ) then {optic_index = 0;};
        _optic = _optics select optic_index;
		
		player addPrimaryWeaponItem _optic;
		
		hint parseText format ["<t align='center' color='#f39403' shadow='1' shadowColor='#000000'>'%2'</t><br/><t align='center' color='#666666'>------------------------------</t><br/><br/><t align='center' color='#666c3f' shadow='1' shadowColor='#000000'><img size='4' image='%1'/></t><br/><br/><t align='center' color='#ffcc33' shadow='1' shadowColor='#000000'></t><br/><br/><t align='center' color='#ffffff' shadow='1' shadowColor='#000000'></t>", getText (configFile >> "cfgWeapons" >> _optic >> "picture"),getText (configFile >> "cfgWeapons" >> _optic >> "displayname")];
    };
};