function create_dialogue(_messages){
	if(instance_exists(obj_dialog)) return;
	
	var _inst = instance_create_depth(0,0,0, obj_dialog); 
	_inst.messages = _messages;
	_inst.current_message = 0;
}

char_colors = {
    "Congrats": c_yellow,
    "Fun Fact!": c_yellow
}
jellyfish_dialog = [
{
    name: "Fun Fact!",
    msg: "Jellyfish are about 95% to 98% water and don't actually have a brain, heart, or lungs." 
},

{
    name: "Fun Fact!",
    msg: "Lots of jellyfish have a very short lifespan but one, Turritopsis dohrnii, is an immortal jellyfish that can restart it's life cycle when under stress or grows old."
},

]
