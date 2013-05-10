if (isNil ("wep_index")) then {wep_index = 0;};
_weps = ["srifle_EBR_F","LMG_Mk200_F", "arifle_Khaybar_F", "arifle_Khaybar_C_F", "arifle_Khaybar_GL_F", "arifle_MXC_F", "arifle_MX_F", "arifle_MX_GL_F", "arifle_MX_SW_F", "arifle_MXM_F", "arifle_SDAR_F", "arifle_TRG21_F", "arifle_TRG20_F", "arifle_TRG21_GL_F" ];
_direction =_this  select 0;

switch (_direction) do
{
    case 0:
    {
	
		wep_index = wep_index - 1;
		if (wep_index < 0 ) then {wep_index = 0;};
        _wepon = _weps select wep_index;
		
		_pWeap = primaryWeapon player;
		player removeWeapon _pWeap;
		
		player addWeapon _wepon;
		player selectWeapon _wepon;
		
		
		hint parseText format ["<t align='center' color='#f39403' shadow='1' shadowColor='#000000'>'%2'</t><br/><t align='center' color='#666666'>------------------------------</t><br/><br/><t align='center' color='#666c3f' shadow='1' shadowColor='#000000'><img size='4' image='%1'/></t><br/><br/><t align='center' color='#ffcc33' shadow='1' shadowColor='#000000'></t><br/><br/><t align='center' color='#ffffff' shadow='1' shadowColor='#000000'></t>", getText (configFile >> "cfgWeapons" >> _wepon >> "picture"),getText (configFile >> "cfgWeapons" >> _wepon >> "displayname")];
		
		
    };

    case 1:
    {
        wep_index = wep_index + 1;
		if (wep_index> count _weps ) then {wep_index = 0;};
        _wepon = _weps select wep_index;
		
		_pWeap = primaryWeapon player;
		player removeWeapon _pWeap;
		

		player addWeapon _wepon;
		player selectWeapon _wepon;
		
		hint parseText format ["<t align='center' color='#f39403' shadow='1' shadowColor='#000000'>'%2'</t><br/><t align='center' color='#666666'>------------------------------</t><br/><br/><t align='center' color='#666c3f' shadow='1' shadowColor='#000000'><img size='4' image='%1'/></t><br/><br/><t align='center' color='#ffcc33' shadow='1' shadowColor='#000000'></t><br/><br/><t align='center' color='#ffffff' shadow='1' shadowColor='#000000'></t>", getText (configFile >> "cfgWeapons" >> _wepon >> "picture"),getText (configFile >> "cfgWeapons" >> _wepon >> "displayname")];
    };
};