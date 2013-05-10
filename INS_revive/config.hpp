// Allow Revive
// values ={ 0,1,2 };
// texts  ={ "Everyone","Medic only","Pre-Defined"};
#define INS_REV_DEF_allow_revive 1

// Player Respawn Delay
// values[]={5,30,60,120,240};
// texts[]={"Dynamic","30 Sec","1 Min","2 Min","4 Min"};
#define INS_REV_DEF_respawn_delay 120

// Life Time for Revive
// values[]={-1,30,60,120,180,300,600};
// texts[]={"Unlimited","30 Sec","1 Min","2 Min","3 Min","5 Min","10 Min"};
#define INS_REV_DEF_life_time -1

// How long takes time to revive
// values[]={10,15,20,25,30,40,50,60,120};
// texts[]={"10 sec","15 sec","20 Sec","25 Sec","30 Sec","40 Sec","50 Sec","1 Min","2 Min"};
#define INS_REV_DEF_revive_take_time 15

// Require Medkit for Rivive
// values[]={ 1,0 };
// texts[]={ "Enabled","Disabled"};
#define INS_REV_DEF_require_medkit 1

// Respawn Faction
// values[]={ 0,1,2 };
// texts[]={ "ALL (Co-Op Only)","SIDE (Co-Op, PvP)","GROUP (Co-Op, PvP)"};
#define INS_REV_DEF_respawn_type 1

// Respawn Location
// values[]={ 0,1,2 };
// texts[]={ "Base + Alive friendly unit","Base","Alive friendly unit"};
#define INS_REV_DEF_respawn_location 1

// On JIP Action
// values[]={ 1,0 };
// texts[]={ "Teleport Action","Dispalay respawn camera"};
#define INS_REV_DEF_jip_action 1

// Allow to Drag Body
// values[]={ 1,0 };
// texts[]={ "Enabled","Disabled"};
#define INS_REV_DEF_can_drag_body 1

//  - Allow to load Body (MEDEVAC)
// values[]={ 1,0 };
// texts[]={ "Enabled","Disabled"};
#define INS_REV_DEF_medevac 1

// Player can respawn player's own body
// values[]={ 1,0 };
// texts[]={ "Enabled","Disabled"};
#define INS_REV_DEF_can_respawn_player_body 0

// Player can respawn player's own body, If half of players are dead.
// values[]={ 1,0 };
// texts[]={ "Enabled","Disabled"};
#define INS_REV_DEF_half_dead_repsawn_player_body 0

// Player can respawn immediately, if there is not exist friendly unit near player
// values[]={ 1,0 };
// texts[]={ "Enabled","Disabled"};
#define INS_REV_DEF_near_friendly 0

// Player can respawn immediately, if all players are dead.
// values[]={ 1,0 };
// texts[]={ "Enabled","Disabled"};
#define INS_REV_DEF_all_dead_respawn 1

// - Friendly unit search distance
// values[]={ 10,30,50,100,300,500 };
// texts[]={ "10m","30m","50m","100m","300m","500m"};
#define INS_REV_DEF_near_friendly_distance 50

// Virtual Ammobox System
// values[]={ 1,0 };
// texts[]={ "Enabled","Disabled"};
#define INS_REV_DEF_virtual_ammobox 1

// - Restore loadout on respawn
// values[]={ 1,0 };
// texts[]={ "Enabled","Disabled"};
#define INS_REV_DEF_vas_on_respawn 1

// TAW View Distance Dialog
// values[]={ 1,0 };
// texts[]={ "Enabled","Disabled"};
#define INS_REV_DEF_taw_view 1

// Teamkiller Lock System
// values[]={ 1,0 };
// texts[]={ "Enabled","Disabled"};
#define INS_REV_DEF_teamkiller_lock 1

// - Teamkill Limit
// values[]={ 1,2,3,4,5 };
// texts[]={ "1","2","3","4","5"};
#define INS_REV_DEF_teamkill_limit 5

// Repair / Push Boat / Flip Vehicle
// values[]={ 1,0 };
// texts[]={ "Enabled","Disabled"};
#define INS_REV_DEF_repair_system 1

// - Repair Delay
// values[]={5,30,60,120,300,600,1200,1800};
// texts[]={"Dynamic","30 Sec","1 Min","2 Min","5 Min","10 Min","20 Min","30 Min"};
#define INS_REV_DEF_repair_system_delay 120

// Manual NVG sensitivity (PageUp, PageDown)
// values[]={ 1,0 };
// texts[]={ "Enabled","Disabled"};
#define INS_REV_DEF_s_nvg 1

// Player Name Tag
// values[]={ 1,0 };
// texts[]={ "Enabled","Disabled"};
#define INS_REV_DEF_name_tag 1

// Player Marker
// values[]={ 1,0 };
// texts[]={ "Enabled","Disabled"};
#define INS_REV_DEF_player_marker 0

// - Marker Process Method
// values[]={ 1,0 };
// texts[]={ "Server Side (Reduce client lag, Co-Op Only)","Client Side (Compatible with PvP)"};
#define INS_REV_DEF_player_marker_method 1

// UAV Reconnaissance
// values[]={ 1,0 };
// texts[]={ "Enabled","Disabled"};
#define INS_REV_DEF_uav_recon 1

// - Display enemy marker (Laggy)
// values[]={ 1,0 };
// texts[]={ "Enabled","Disabled"};
#define INS_REV_DEF_uav_recon_enemy_marker 0

// UAV Briefing
// values[]={ 1,0 };
// texts[]={ "Enabled","Disabled"};
#define INS_REV_DEF_uav_briefing 0
