private ["_objs","_vec","_x","_y","_xC","_yC","_distance"];
_objs = _this select 3;
_vec = _objs select 0;

_x = (getPos player) select 0;
_y =  (getPos player) select 1;

_xS = (getPos _vec) select 0;
_yS = (getPos _vec) select 1;

_distance = sqrt(((_xS - _x)^2) + ((_yS - _y)^2)) +2;

_xC = (sin(getDir player) * _distance) + _x;
_yC = (cos(getDir player) * _distance) + _y;

_vec setPos [_xC, _yC, 0];