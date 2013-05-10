//// Rio Gear
// 
// Created by: Riouken 
//

ShowDialog = {
	sleep 0.01;
	_ok = createDialog "Rio_gear_gui";
	waitUntil { !dialog };
};
 
_void = [] call ShowDialog;