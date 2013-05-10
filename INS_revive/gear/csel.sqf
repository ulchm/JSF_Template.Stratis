private["_type","_dialog","_dialogID","_list","_slist","_slistID","_sel","_num","_data","_profile"];
disableSerialization;
_type = _this select 0;

if(_type == 0) then {
	// Save Dialog
	_dialog = findDisplay 2510;
	_list = _dialog displayCtrl 2511;
	_slist = _dialog displayctrl 2513;
	_dialogID = 2510;
	_slistID = 2513;

	lbClear _slist;

	_sel = Lbselection _list select 0;
	if(isNil {_sel}) then {_sel = 0;};
	_num = _sel;
	_data = lbData[2511,_sel];
	_profile = profileNameSpace getVariable format["vas_gear_naong_%1",_num];
	
	ctrlSetText [2512, lbText [2511, _num]];
	
	// add items to listbox
	[_dialogID, _slistID, _profile] call FNC_Add_Loadout_to_Listbox;
} else {
	// Load Dialog
	_dialog = findDisplay 2520;
	_list = _dialog displayCtrl 2521;
	_slist = _dialog displayctrl 2522;
	_dialogID = 2520;
	_slistID = 2522;
	
	lbClear _slist;

	_sel = Lbselection _list select 0;
	if(isNil {_sel}) then {_sel = 0;};
	_num = _sel;
	_data = lbData[2511,_sel];
	_profile = profileNameSpace getVariable format["vas_gear_naong_%1",_num];
	
	// add items to listbox
	[_dialogID, _slistID, _profile] call FNC_Add_Loadout_to_Listbox;
};