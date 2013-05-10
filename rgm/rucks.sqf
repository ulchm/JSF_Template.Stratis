if (isNil ("ruck_index")) then {ruck_index = 0;};
_rucks = ["B_AssaultPack_Base","B_AssaultPack_blk","B_AssaultPack_blk_DiverExp","B_AssaultPack_blk_DiverTL","B_AssaultPack_cbr","B_AssaultPack_dgtl","B_AssaultPack_khk","B_AssaultPack_khk_holder","B_AssaultPack_mcamo","B_AssaultPack_ocamo","B_AssaultPack_rgr","B_AssaultPack_rgr_Medic","B_AssaultPack_rgr_Repair","B_AssaultPack_sgg","B_Bergen_Base","B_Bergen_sgg","B_Bergen_sgg_Exp","B_Carryall_Base","B_Carryall_ocamo","B_Carryall_oucamo","B_Carryall_oucamo_Exp","B_diver_exp_F","B_diver_F","B_diver_TL_F","B_FieldPack_Base","B_FieldPack_blk","B_FieldPack_blk_DiverExp","B_FieldPack_blk_DiverTL","B_FieldPack_cbr","B_FieldPack_cbr_AT","B_FieldPack_cbr_Repair","B_FieldPack_ocamo","B_FieldPack_ocamo_Medic","B_FieldPack_oucamo","B_Kitbag_Base","B_Kitbag_cbr","B_Kitbag_mcamo","B_Kitbag_sgg"];
_direction =_this select 0;

switch (_direction) do
{
    case 0:
    {
	
		ruck_index = ruck_index - 1;
		if (ruck_index < 0 ) then {ruck_index = 0;};
        _ruck = _rucks select ruck_index;
		removeBackpack player;
		player addBackpack _ruck;
		
		//hint parseText format ["<t align='center' color='#f39403' shadow='1' shadowColor='#000000'>'%2'</t><br/><t align='center' color='#666666'>------------------------------</t><br/><br/><t align='center' color='#666c3f' shadow='1' shadowColor='#000000'><img size='4' image='%1'/></t><br/><br/><t align='center' color='#ffcc33' shadow='1' shadowColor='#000000'></t><br/><br/><t align='center' color='#ffffff' shadow='1' shadowColor='#000000'></t>", getText (configFile >> "cfgWeapons" >> _ruck >> "picture"),getText (configFile >> "cfgWeapons" >> _ruck >> "displayname")];
		
    };

    case 1:
    {
        ruck_index = ruck_index + 1;
		if (ruck_index > count _rucks ) then {ruck_index = 0;};
        _ruck = _rucks select ruck_index;
		removeBackpack player;
		player addBackpack _ruck;
		
		//hint parseText format ["<t align='center' color='#f39403' shadow='1' shadowColor='#000000'>'%2'</t><br/><t align='center' color='#666666'>------------------------------</t><br/><br/><t align='center' color='#666c3f' shadow='1' shadowColor='#000000'><img size='4' image='%1'/></t><br/><br/><t align='center' color='#ffcc33' shadow='1' shadowColor='#000000'></t><br/><br/><t align='center' color='#ffffff' shadow='1' shadowColor='#000000'></t>", getText (configFile >> "cfgWeapons" >> _ruck >> "picture"),getText (configFile >> "cfgWeapons" >> _ruck >> "displayname")];
    };
};