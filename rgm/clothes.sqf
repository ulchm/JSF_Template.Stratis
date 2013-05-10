if (isNil ("clo_index")) then {clo_index = 0;};
_cloths = ["U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_tshirt","U_B_CombatUniform_mcam_vest","U_B_HeliPilotCoveralls","U_B_Wetsuit","U_BasicBody","U_C_Commoner1_1","U_C_Commoner1_2","U_C_Commoner1_3","U_C_Poloshirt_blue","U_C_Poloshirt_burgundy","U_C_Poloshirt_redwhite","U_C_Poloshirt_salmon","U_C_Poloshirt_stripped","U_C_Poloshirt_tricolour","U_OI_CombatUniform_ocamo","U_OI_PilotCoveralls","U_OI_Wetsuit","U_Rangemaster","UGL_F"];
_direction =_this  select 0;

switch (_direction) do
{
    case 0:
    {
	
		clo_index = clo_index - 1;
		if (clo_index < 0 ) then {clo_index = 0;};
        _cloth = _cloths select clo_index;
		
		player addUniform _cloth;
		
		hint parseText format ["<t align='center' color='#f39403' shadow='1' shadowColor='#000000'>'%2'</t><br/><t align='center' color='#666666'>------------------------------</t><br/><br/><t align='center' color='#666c3f' shadow='1' shadowColor='#000000'><img size='4' image='%1'/></t><br/><br/><t align='center' color='#ffcc33' shadow='1' shadowColor='#000000'></t><br/><br/><t align='center' color='#ffffff' shadow='1' shadowColor='#000000'></t>", getText (configFile >> "cfgWeapons" >> _cloth >> "picture"),getText (configFile >> "cfgWeapons" >> _cloth >> "displayname")];
    };

    case 1:
    {
        clo_index = clo_index + 1;
		if (clo_index > count _cloths ) then {clo_index = 0;};
		
        _cloth = _cloths select clo_index;
		
		player addUniform _cloth;
		
		hint parseText format ["<t align='center' color='#f39403' shadow='1' shadowColor='#000000'>'%2'</t><br/><t align='center' color='#666666'>------------------------------</t><br/><br/><t align='center' color='#666c3f' shadow='1' shadowColor='#000000'><img size='4' image='%1'/></t><br/><br/><t align='center' color='#ffcc33' shadow='1' shadowColor='#000000'></t><br/><br/><t align='center' color='#ffffff' shadow='1' shadowColor='#000000'></t>", getText (configFile >> "cfgWeapons" >> _cloth >> "picture"),getText (configFile >> "cfgWeapons" >> _cloth >> "displayname")];
    };
};