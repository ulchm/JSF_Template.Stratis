if (isNil ("ves_index")) then {ves_index = 0;};
_vests = ["V_Rangemaster_belt", "V_BandollierB_khk", "V_BandollierB_rgr", "V_BandollierB_cbr", "V_PlateCarrier1_rgr", "V_PlateCarrier1_cbr", "V_PlateCarrier1_blk", "V_PlateCarrier2_rgr", "V_PlateCarrier2_cbr", "V_PlateCarrier2_blk", "V_PlateCarrierGL_rgr", "V_PlateCarrierGL_cbr", "V_PlateCarrierGL_blk", "V_PlateCarrierSpec_rgr", "V_PlateCarrierSpec_cbr", "V_Chestrig_khk", "V_ChestrigB_rgr", "V_ChestrigB_blk", "V_ChestrigB_khk", "V_Chestrig_blk", "V_Chestrig_camo", "V_TacVest_khk","V_TacVest_brn", "V_TacVest_blk", "V_TacVest_camo", "V_TacVest_oli", "V_TacVest_blk_POLICE", "V_TacVestIR_blk","V_HarnessO_brn", "V_HarnessO_gry", "V_HarnessOGL_brn", "V_HarnessOGL_gry", "V_HarnessOSpec_brn", "V_HarnessOSpec_gry", "V_TacVestCamo_khk", "V_PlateCarrierIA1_khk", "V_PlateCarrierIA2_khk", "V_PlateCarrierIAGL_khk","V_RebreatherB", "V_RebreatherIR", "V_RebreatherIA" ];


_direction =_this  select 0;

switch (_direction) do
{
    case 0:
    {
	
		ves_index = ves_index - 1;
		if (ves_index < 0 ) then {ves_index = 0;};
        _vest = _vests select ves_index;
		
		player addVest _vest;
		
		hint parseText format ["<t align='center' color='#f39403' shadow='1' shadowColor='#000000'>'%2'</t><br/><t align='center' color='#666666'>------------------------------</t><br/><br/><t align='center' color='#666c3f' shadow='1' shadowColor='#000000'><img size='4' image='%1'/></t><br/><br/><t align='center' color='#ffcc33' shadow='1' shadowColor='#000000'></t><br/><br/><t align='center' color='#ffffff' shadow='1' shadowColor='#000000'></t>", getText (configFile >> "cfgWeapons" >> _vest >> "picture"),getText (configFile >> "cfgWeapons" >> _vest >> "displayname")];
		
    };

    case 1:
    {
        ves_index = ves_index + 1;
		if (ves_index > count _vests ) then {ves_index = 0;};
		
        _vest = _vests select ves_index;
		
		player addVest _vest;
		
		hint parseText format ["<t align='center' color='#f39403' shadow='1' shadowColor='#000000'>'%2'</t><br/><t align='center' color='#666666'>------------------------------</t><br/><br/><t align='center' color='#666c3f' shadow='1' shadowColor='#000000'><img size='4' image='%1'/></t><br/><br/><t align='center' color='#ffcc33' shadow='1' shadowColor='#000000'></t><br/><br/><t align='center' color='#ffffff' shadow='1' shadowColor='#000000'></t>", getText (configFile >> "cfgWeapons" >> _vest >> "picture"),getText (configFile >> "cfgWeapons" >> _vest >> "displayname")];
    };
};