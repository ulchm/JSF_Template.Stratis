if (isNil ("hel_index")) then {hel_index = 0;};
_hats = ["H_Booniehat_khk","H_Booniehat_mcamo","H_Booniehat_ocamo","H_Cap_blu","H_Cap_brn_SERO","H_Cap_headphones","H_Cap_red","H_HelmetB","H_HelmetB_light","H_HelmetB_paint","H_HelmetO_ocamo","H_MilCap_mcamo","H_MilCap_ocamo","H_PilotHelmetHeli_B","H_PilotHelmetHeli_O"];
_direction =_this  select 0;

switch (_direction) do
{
    case 0:
    {
	
		hel_index = hel_index - 1;
		if (hel_index < 0 ) then {hel_index = 0;};
        _hat = _hats select hel_index;
		
		player addHeadgear _hat;
		
		
    };

    case 1:
    {
        hel_index = hel_index + 1;
		if (hel_index> count _hats ) then {hel_index = 0;};
        _hat = _hats select hel_index;
		
		player addHeadgear _hat;
    };
};