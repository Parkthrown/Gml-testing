#region inputs
if(global.IO[0] == id){
	var movement_horizontal = global.input_movementHorizontal;
	var movement_vertical = global.input_movementVertical;
	var request_interact = global.input_interact;
	var movement_crouch_hold = global.input_crouchHold;
	var request_jump = global.input_jump;
	var movement_jump_hold =  global.input_jumpHold;
	var request_attack =  global.input_shoot;
	var request_roll =  global.input_roll;
	var request_grab = global.input_grab;
}else {
	var movement_horizontal = 0;
	var movement_vertical = 0;
	var request_interact = 0;
	var movement_crouch_hold = 0;
	var request_jump = 0;
	var movement_jump_hold =  0;
	var request_attack =  0;
	var request_roll =  0;
	var request_grab = 0;
}
#endregion
#region dives
	if(request_roll && diveCount < maxJumps && alarm[1] < 0){
		wax_dive(movement_horizontal,4.25,-2,20);
		return FAILURE_CODE;
	}
#endregion
#region subStates
var doState;
var stateData = argument0;
var stateArgs = argument0[?fsmData.stateArgs];
var stateScript = argument0[?fsmData.stateScript];
var subFsm = argument0[?fsmData.subFSM];
doState = fsm_group_execute_state(subFsm,subState);
#endregion
if(doState){
	#region collision
		collideH();
		x+=hsp;
		collideV();
		y+=vsp;
	#endregion
}