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

fish5_dialog = [
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

fish2_dialog = [
{
    name: "Fun Fact!",
    msg: "There is a myth that goldfish have a three-second memory." 
},

{
    name: "Fun Fact!",
    msg: "Studies show that fish can remember things for months, even years and show sophisticated behaviours based on their learning." 
},


]

fish3_dialog = [
{
    name: "Fun Fact!",
    msg: "Some fish have specialized organs called electroreceptors that can help them to track their prey by detecting electrical signals in the water." 
},


]

fish4_dialog = [
{
    name: "Fun Fact!",
    msg: "Fish rely on dissolved oxygen to breath. " 
},

{
    name: "Fun Fact!",
    msg: "If the water does not contain enough oxygen due to pollution, temperature changes, then fish can die." 
},


]

fish1_dialog = [
{
    name: "Fun Fact!",
    msg: "Fishes communicate with each other in a variety of ways, including chirping, body movements, using their swim bladder, and in some cases, electrical impulses." 
},

]

fish6_dialog = [
{
    name: "Fun Fact!",
    msg: "Some fishes are also known to change colours depending on camouflage needs, environmental conditions and time of the year." 
},


]

octopus_dialog = [
{
    name: "Fun Fact!",
    msg: "Did you know octopi are incredibly intelligent?" 
},

{
    name: "Fun Fact!",
    msg: "They are able to problem solve, learn, memorize, and communicate in their own ways." 
},


]

starfish_dialog = [
{
    name: "Fun Fact!",
    msg: "Starfish population has been decreasing significantly due to ocean warming and diseases like sea star wasting syndrome, which causes their limbs to decay." 
},

]

whale_dialog = [

{
    name: "Fun Fact!",
    msg: "Did you know that whales actually have hair? " 
},

{
    name: "Fun Fact!",
    msg: "Whales are some of the biggest mammals on earth. " 
},

{
    name: "Fun Fact!",
    msg: "The blue whale specifically is actually the largest animal to be living on Earth right now." 
},

]

anglerfish_dialog = [
{
    name: "Fun Fact!",
    msg: "Angler fish are also scavengers, an important class of organisms in ecosystems that eat dead or discarded organic matter (like vultures)." 
},

{
    name: "Fun Fact!",
    msg: "They help break down dead plants and animals and keep the biome healthy! " 
},


]

vampire_squid_dialog = [
{
    name: "Fun Fact!",
    msg: "In the midnight zone of the ocean (the depth at which no light reaches), various animals utilize bioluminescence to see and attract prey." 
},

{
    name: "Fun Fact!",
    msg: "Bioluminescence is the emission of light by an organism through a chemical reaction." 
},

{
    name: "Fun Fact!",
    msg: "The vampire squid uses bioluminescence to attract prey and can eject a cloud of bioluminescent mucus to distract and escape predators." 
},


]

can_dialog = [
{
    name: "Fun Fact!",
    msg: "Unfortunately, a lot of trash gets put into the ocean such as the Great Pacific Garbage Patch." 
},

{
    name: "Fun Fact!",
    msg: "This is incredibly harmful to the ocean and kills a lot of organisms." 
},


]






