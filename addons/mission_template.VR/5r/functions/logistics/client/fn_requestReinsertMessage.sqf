params ["_unit"];
private _group = group _unit;
hintSilent parseText format [
	"<t size='1.4' color='#e6542a' align='center'>REINSERT REQUEST</t><br/><t align='center'>%1</t><br/><t align='center'>%2</t>",
	name _unit,
	groupId _group
]; 
if (profileNamespace getVariable ["x5r_tags_requestReinsertSoundEnabled",true]) then {playSoundUI ["TacticalPing", 0.7];};
