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


seaweed_dialog = [
{
    name: "Fun Fact!",
    msg: "These plants are incredibly important to human health and the ecosystem as they are responsible for a majority of the oxygen we breathe." 
},

{
    name: "Fun Fact!",
    msg: "They also form the base for the food chain in a lot of marine ecosystems."
},

]

shark_dialog = [
{
    name: "Fun Fact!",
    msg: "Although a lot of humans are afraid of sharks, they are actually a vital part of the ecosystem." 
},

{
    name: "Fun Fact!",
    msg: "They regulate prey populations and ensure they don't overpopulate and throw off an ecosystem's balance."
},

]

turtle_dialog = [
{
    name: "Fun Fact!",
    msg: "Turtles are reptiles, meaning they have scaly skins covering their body and mostly lay eggs." 
},

{
    name: "Fun Fact!",
    msg: "Only 1 out of 1000 can reach adulthood because as juveniles they are very vulnerable to predators."
},

]

whale_shark_dialog = [
{
    name: "Fun Fact!",
    msg: "They are the largest fish in the world and are generally considered to be harmless for humans!  " 
},

]

shrimp_dialog = [
{
    name: "Fun Fact!",
    msg: "Shrimps are omnivores, meaning they eat both plants and animals. " 
},

{
    name: "Fun Fact!",
    msg: "There are thousands of species of it; some of them are incredibly strong and can even break aquarium glass with their powerful strikes!"
},

]

plastic_rings_dialog = [
{
    name: "Fun Fact!",
    msg: "These are notorious for killing our ocean friends when they get stuck in them and can't breathe! " 
},

{
    name: "Fun Fact!",
    msg: "Make sure to cut up all the tight parts before recycling."
},

]

dolphin_dialog = [
{
    name: "Fun Fact!",
    msg: "Dolphins communicate with each other through echolocation! " 
},

{
    name: "Fun Fact!",
    msg: "They can navigate by emitting sounds and sensing the sound waves that bounce off objects around them. "
},

]

fish1_dialog = [
{
    name: "Fun Fact!",
    msg: "Have you ever wondered how fish sleep underwater? " 
},

{
    name: "Fun Fact!",
    msg: "Unlike mammals, fish don’t experience sleep." 
},

{
    name: "Fun Fact!",
    msg: "Instead they enter a resting stage to reduce their activity and conserve energy." 
},


]

