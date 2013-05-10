///////////////////////////////////////////////////////////
/////////        Ammo Box A3          /////////////////////
/////////        By: Riouken       ////////////////////////
/////////                          ////////////////////////
/// http://forums.bistudio.com/member.php?64032-Riouken  //
///////////////////////////////////////////////////////////

if (! isServer) exitWith {};

_crate = _this select 0;


while {alive _crate} do
{

clearMagazineCargo _crate;
clearWeaponCargo _crate;
clearItemCargoGlobal _crate;
///NATO Weapons///

_crate addWeaponCargoGlobal ["arifle_MX_F", 1];
_crate addWeaponCargoGlobal ["arifle_MX_GL_F", 1];
_crate addWeaponCargoGlobal ["arifle_MXC_F", 1];
_crate addWeaponCargoGlobal ["arifle_TRG20_F", 1];
_crate addWeaponCargoGlobal ["arifle_TRG21_F", 1];
_crate addWeaponCargoGlobal ["arifle_TRG21_GL_F", 1];
//_crate addWeaponCargoGlobal ["arifle_MSM_F", 1];
_crate addWeaponCargoGlobal ["srifle_EBR_F", 1];
_crate addWeaponCargoGlobal ["LMG_Mk200_F", 1];



///OPFOR Weapons////
_crate addWeaponCargoGlobal ["arifle_Khaybar_F", 1];
_crate addWeaponCargoGlobal ["arifle_Khaybar_C_F", 1];
_crate addWeaponCargoGlobal ["arifle_Khaybar_GL_F", 1];
_crate addWeaponCargoGlobal ["hgun_rook40_F", 1];

///AMMO///
_crate addMagazineCargoGlobal ["30Rnd_65x39_Caseless_mag", 200];
_crate addMagazineCargoGlobal ["100Rnd_65x39_Caseless_mag", 200];
_crate addMagazineCargoGlobal ["30Rnd_65x39_caseless_mag_Tracer", 200];
_crate addMagazineCargoGlobal ["100Rnd_65x39_caseless_mag_Tracer", 200];
//_crate addMagazineCargoGlobal ["30Rnd_65x39_caseless_mag_green", 200];
_crate addMagazineCargoGlobal ["30Rnd_65x39_case_mag", 200];
_crate addMagazineCargoGlobal ["20Rnd_762x45_Mag", 200];
_crate addMagazineCargoGlobal ["16Rnd_9x21_Mag", 200];
_crate addMagazineCargoGlobal ["30Rnd_9x21_Mag", 200];
_crate addMagazineCargoGlobal ["20Rnd_556x45_UW_Mag", 200];
_crate addMagazineCargoGlobal ["30RND_556x45_Stanag", 200];
_crate addMagazineCargoGlobal ["200RND_65x39_Cased_box_Tracer", 200];

////Launchers////
_crate addWeaponCargoGlobal ["launch_NLAW_F", 1];
_crate addWeaponCargoGlobal ["launch_RPG32_F", 1];

////Launcher Ammo////
_crate addMagazineCargoGlobal ["RPG32_F", 1];
_crate addMagazineCargoGlobal ["NLAW_F", 1];

/////Explosives////
_crate addMagazineCargoGlobal ["ATMine_Range_Mag", 1];
_crate addMagazineCargoGlobal ["APERSMine_Range_Mag", 1];
_crate addMagazineCargoGlobal ["ClaymoreDirectionalMine_Remote_Mag", 1];
_crate addMagazineCargoGlobal ["DemoCharge_Remote_Mag", 1];
_crate addMagazineCargoGlobal ["APERSBoundingMine_Range_Mag", 1];
_crate addMagazineCargoGlobal ["SLAMDirectionalMine_Wire_Mag", 1];
_crate addMagazineCargoGlobal ["APERSTripMine_Wire_Mag", 1];
_crate addWeaponCargoGlobal ["ToolKit", 1];
_crate addWeaponCargoGlobal ["MineDetector", 1];
_crate addWeaponCargoGlobal ["Medikit", 1];


/////Grenades////
_crate addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell", 1];
_crate addMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell", 1];
_crate addMagazineCargoGlobal ["1Rnd_SmokeGreen_Grenade_shell", 1];
_crate addMagazineCargoGlobal ["1Rnd_SmokeYellow_Grenade_shell", 1];
_crate addMagazineCargoGlobal ["1Rnd_SmokePurple_Grenade_shell", 1];
_crate addMagazineCargoGlobal ["1Rnd_SmokeBlue_Grenade_shell", 1];
_crate addMagazineCargoGlobal ["1Rnd_SmokeOrange_Grenade_shell", 1];
_crate addMagazineCargoGlobal ["SmokeShellRed", 1];
_crate addMagazineCargoGlobal ["SmokeShell", 1];
_crate addMagazineCargoGlobal ["SmokeShellGreen", 1];
_crate addMagazineCargoGlobal ["SmokeShellYellow", 1];
_crate addMagazineCargoGlobal ["SmokeShellPurple", 1];
_crate addMagazineCargoGlobal ["SmokeShellBlue", 1];
_crate addMagazineCargoGlobal ["SmokeShellOrange", 1];

///Attachments///
_crate addItemCargoGlobal ["Zasleh2",50];
_crate addItemCargoGlobal ["muzzle_snds_H", 1];
_crate addItemCargoGlobal ["muzzle_snds_L", 1];
_crate addItemCargoGlobal ["muzzle_snds_B", 1];
_crate addItemCargoGlobal ["muzzle_snds_H_MG", 1];
_crate addItemCargoGlobal ["optic_Arco", 1];
_crate addItemCargoGlobal ["optic_Hamr", 1];
_crate addItemCargoGlobal ["optic_Aco", 1];
_crate addItemCargoGlobal ["optic_ACO_grn",50];
_crate addItemCargoGlobal ["optic_Holosight", 1];
_crate addItemCargoGlobal ["acc_flashlight", 1];
_crate addItemCargoGlobal ["acc_pointer_IR", 1];

////Items////

/////Items////
_crate addItemCargoGlobal ["FirstAidKit", 1];
_crate addItemCargoGlobal ["Toolkit", 1];

////Uniforms(working)////
_crate addItemCargoGlobal ["U_BasicBody", 1];
_crate addItemCargoGlobal ["U_B_CombatUniform_mcam", 1];
_crate addItemCargoGlobal ["U_B_CombatUniform_mcam_tshirt", 1];
_crate addItemCargoGlobal ["U_B_CombatUniform_mcam_vest", 1];
_crate addItemCargoGlobal ["U_B_HeliPilotCoveralls", 1];
_crate addItemCargoGlobal ["U_B_Wetsuit", 1];
_crate addItemCargoGlobal ["U_C_Poloshirt_blue", 1];
_crate addItemCargoGlobal ["U_C_Poloshirt_burgundy", 1];
_crate addItemCargoGlobal ["U_C_Poloshirt_stripped", 1];
_crate addItemCargoGlobal ["U_C_Poloshirt_tricolour", 1];
_crate addItemCargoGlobal ["U_C_Poloshirt_salmon", 1];
_crate addItemCargoGlobal ["U_C_Poloshirt_redwhite", 1];
_crate addItemCargoGlobal ["U_C_Commoner1_1", 1];
_crate addItemCargoGlobal ["U_C_Commoner1_2", 1];
_crate addItemCargoGlobal ["U_C_Commoner1_3", 1];
_crate addItemCargoGlobal ["U_Rangemaster", 1];

////Vests(working)////
_crate addItemCargoGlobal ["V_Rangemaster_belt", 1];
_crate addItemCargoGlobal ["V_BandollierB_khk", 1];
_crate addItemCargoGlobal ["V_BandollierB_rgr", 1];
_crate addItemCargoGlobal ["V_BandollierB_cbr", 1];
_crate addItemCargoGlobal ["V_PlateCarrier1_rgr", 1];
_crate addItemCargoGlobal ["V_PlateCarrier1_cbr", 1];
_crate addItemCargoGlobal ["V_PlateCarrier2_rgr", 1];
_crate addItemCargoGlobal ["V_PlateCarrierGL_rgr", 1];
_crate addItemCargoGlobal ["V_Chestrig_khk", 1];
_crate addItemCargoGlobal ["V_ChestrigB_rgr", 1];
_crate addItemCargoGlobal ["V_TacVest_khk", 1];
_crate addItemCargoGlobal ["V_TacVest_brn", 1];
_crate addItemCargoGlobal ["V_TacVest_oli", 1];
_crate addItemCargoGlobal ["V_HarnessO_brn", 1];
_crate addItemCargoGlobal ["V_HarnessOGL_brn", 1];
_crate addItemCargoGlobal ["V_RebreatherB", 1];
_crate addItemCargoGlobal ["V_RebreatherIR", 1];

////Helmets(working)////
_crate addItemCargoGlobal ["H_HelmetB", 1];
_crate addItemCargoGlobal ["H_Booniehat_khk", 1];
_crate addItemCargoGlobal ["H_Booniehat_mcamo", 1];
_crate addItemCargoGlobal ["H_Booniehat_ocamo", 1];
_crate addItemCargoGlobal ["H_HelmetB_paint", 1];
_crate addItemCargoGlobal ["H_HelmetB_light", 1];
_crate addItemCargoGlobal ["H_Cap_red", 1];
_crate addItemCargoGlobal ["H_Cap_brn_SERO", 1];
_crate addItemCargoGlobal ["H_Cap_blu", 1];
_crate addItemCargoGlobal ["H_Cap_headphones", 1];
_crate addItemCargoGlobal ["H_PilotHelmetHeli_B", 1];
_crate addItemCargoGlobal ["H_PilotHelmetHeli_O", 1];
_crate addItemCargoGlobal ["H_HelmetO_ocamo", 1];
_crate addItemCargoGlobal ["H_MilCap_ocamo", 1];
_crate addItemCargoGlobal ["H_MilCap_mcamo", 1];

////Backbacks////
_crate addBackPackCargo ["B_AssaultPack_Base", 1];
_crate addBackPackCargo ["B_AssaultPack_blk_DiverTL", 1];
_crate addBackPackCargo ["B_AssaultPack_dgtl", 1];
_crate addBackPackCargo ["B_AssaultPack_khk", 1];
_crate addBackPackCargo ["B_AssaultPack_mcamo", 1];
_crate addBackPackCargo ["B_AssaultPack_ocamo", 1];
_crate addBackPackCargo ["B_AssaultPack_rgr", 1];
_crate addBackPackCargo ["B_AssaultPack_sgg", 1];
_crate addBackPackCargo ["B_Bergen_Base", 1];
_crate addBackPackCargo ["B_Carryall_Base", 1];
_crate addBackPackCargo ["B_Carryall_ocamo", 1];
_crate addBackPackCargo ["B_Carryall_oucamo", 1];
_crate addBackPackCargo ["B_FieldPack_Base", 1];
_crate addBackPackCargo ["B_FieldPack_blk", 1];
_crate addBackPackCargo ["B_FieldPack_ocamo", 1];
_crate addBackPackCargo ["B_FieldPack_oucamo", 1];
_crate addBackPackCargo ["B_Kitbag_Base", 1];
_crate addBackPackCargo ["B_Kitbag_cbr", 1];
_crate addBackPackCargo ["B_Kitbag_mcamo", 1];
_crate addBackPackCargo ["B_Kitbag_sgg", 1];

sleep 500;
};
