if (isNil ("rail_index")) then {rail_index = 0;};
_rails = ["acc_flashlight","acc_pointer_IR"];
_direction =_this select 0;

switch (_direction) do
{
    case 0:
    {
	
		rail_index = rail_index - 1;
		if (rail_index < 0 ) then {rail_index = 0;};
        _rail = _rails select rail_index;
		
		player addPrimaryWeaponItem _rail;
		
		hint parseText format ["<t align='center' color='#f39403' shadow='1' shadowColor='#000000'>'%2'</t><br/><t align='center' color='#666666'>------------------------------</t><br/><br/><t align='center' color='#666c3f' shadow='1' shadowColor='#000000'><img size='4' image='%1'/></t><br/><br/><t align='center' color='#ffcc33' shadow='1' shadowColor='#000000'></t><br/><br/><t align='center' color='#ffffff' shadow='1' shadowColor='#000000'></t>", getText (configFile >> "cfgWeapons" >> _rail >> "picture"),getText (configFile >> "cfgWeapons" >> _rail >> "displayname")];
		
    };

    case 1:
    {
        rail_index = rail_index + 1;
		if (rail_index > count _rails ) then {rail_index = 0;};
        _rail = _rails select rail_index;
		
		player addPrimaryWeaponItem _rail;
		
		hint parseText format ["<t align='center' color='#f39403' shadow='1' shadowColor='#000000'>'%2'</t><br/><t align='center' color='#666666'>------------------------------</t><br/><br/><t align='center' color='#666c3f' shadow='1' shadowColor='#000000'><img size='4' image='%1'/></t><br/><br/><t align='center' color='#ffcc33' shadow='1' shadowColor='#000000'></t><br/><br/><t align='center' color='#ffffff' shadow='1' shadowColor='#000000'></t>", getText (configFile >> "cfgWeapons" >> _rail >> "picture"),getText (configFile >> "cfgWeapons" >> _rail >> "displayname")];
    };
};