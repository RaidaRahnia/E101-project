function create_dialogue(_messages){
	if(instance_exists(obj_dialog)) return;
	
	var _inst = instance_create_depth(0,0,0, obj_dialog); 
	_inst.messages = _messages;
	_inst.current_message = 0;
}

char_colors = {
    "Congrats": c_yellow,
    "Fun Fact!": c_yellow,
    "Seaweed" : c_green,
    "Shark": c_yellow,
    "Turtle" : c_yellow,
    "Sad Fact :(":c_yellow,
    "Whale Shark" : c_yellow,
    "Shrimp" : c_yellow,
    "Plastic Rings": c_yellow,
    "Fish": c_yellow,
    "Whale": c_yellow,
    "Jellyfish": c_yellow,
    "Dolphin": c_yellow,
    "Fishy Fact": c_yellow,
    "Octopus": c_yellow,
    "Blue Whale": c_yellow,
    "Vampire Squid": c_yellow,
    "Angler Fish": c_yellow,
    "Sea Otter": c_yellow,
    "Sea Lion": c_yellow,
    "Sea Urchin": c_yellow,
    "Hope!": c_yellow,
    "Crab": c_yellow,
    "Stingray": c_yellow,
    "Seahorse": c_yellow,
    "Eel": c_yellow,
    
}

jellyfish_dialog = [
{
    name: "Jellyfish",
    msg: "Jellyfish are about 95% to 98% water and don't actually have a brain, heart, or lungs. [Press Space to Continue]" 
},

{
    name: "Fun Fact!",
    msg: "Lots of jellyfish have a very short lifespan but one, Turritopsis dohrnii, is an immortal jellyfish that can restart it's life cycle when under stress or grows old. [Press Space to Continue]"
},

]


seaweed_dialog = [
{
    name: "Seaweed",
    msg: "These plants are incredibly important to human health and the ecosystem as they are responsible for a majority of the oxygen we breathe. [Press Space to Continue]" 
},


]

shark_dialog = [
{
    name: "Shark",
    msg: "Although a lot of humans are afraid of sharks, they are actually a vital part of the ecosystem. [Press Space to Continue]" 
},

{
    name: "Shark",
    msg: "They regulate prey populations and ensure they don't overpopulate and throw off an ecosystem's balance. [Press Space to Continue]"
},

]

turtle_dialog = [
{
    name: "Turtle",
    msg: "Turtles are reptiles, meaning they have scaly skins covering their body and mostly lay eggs. [Press Space to Continue]" 
},

 /*
{
    name: "Sad Fact :(",
    msg: "Only 1 out of 1000 can reach adulthood because as juveniles they are very vulnerable to predators."
},*/

]

whale_shark_dialog = [
{
    name: "Whale Shark",
    msg: "They are the largest fish in the world and are generally considered to be harmless for humans! [Press Space to Continue]" 
},

]

shrimp_dialog = [
{
    name: "Shrimp",
    msg: "Shrimps are omnivores, meaning they eat both plants and animals. [Press Space to Continue]" 
},

/*
{
    name: "Fun Fact!",
    msg: "There are thousands of species of shrimp; some of them are incredibly strong and can even break aquarium glass with their powerful strikes!"
},*/

]

plastic_rings_dialog = [
{
    name: "Plastic Rings",
    msg: "These are notorious for killing our ocean friends when they get stuck in them and can't breathe! [Press Space to Continue] " 
},

{
    name: "Plastic Rings",
    msg: "It is beneficial to recycle them through in-store recycling, but if not, make sure to cut up all the tight parts before throwing them in the trash. [Press Space to Continue]"
},

]

dolphin_dialog = [
{
    name: "Dolphin",
    msg: "Dolphins communicate with each other through echolocation! [Press Space to Continue] " 
},

{
    name: "Dolphin",
    msg: "They can navigate by emitting sounds and sensing the sound waves that bounce off objects around them. [Press Space to Continue]"
},

]

fish5_dialog = [
{
    name: "Fishy Fact",
    msg: "Have you ever wondered how fish sleep underwater? [Press Space to Continue]" 
},

{
    name: "Fishy Fact",
    msg: "Unlike mammals, fish don't experience sleep. [Press Space to Continue]" 
},

{
    name: "Fishy Fact",
    msg: "Instead they enter a resting stage to reduce their activity and conserve energy. [Press Space to Continue]" 
},


]

fish2_dialog = [
{
    name: "Fishy Fact",
    msg: "Studies show that fish can remember things for months, even years and show sophisticated behaviours based on their learning. [Press Space to Continue]" 
},


]

fish3_dialog = [
{
    name: "Fun Fact!",
    msg: "Some fish have specialized organs called electroreceptors that can help them to track their prey by detecting electrical signals in the water. [Press Space to Continue]" 
},


]

fish4_dialog = [
{
    name: "Fun Fact!",
    msg: "Fish rely on dissolved oxygen to breathe. [Press Space to Continue]" 
},

{
    name: "Fun Fact!",
    msg: "If the water does not contain enough oxygen due to pollution and temperature changes, then fish can die. [Press Space to Continue]" 
},


]

fish1_dialog = [
{
    name: "Fun Fact!",
    msg: "Fishes communicate with each other in a variety of ways including chirping, body movements, using their swim bladder, and in some cases, electrical impulses. [Press Space to Continue]" 
},

]

fish6_dialog = [
{
    name: "Fun Fact!",
    msg: "Some fishes are also known to change colours depending on camouflage needs, environmental conditions, and time of the year. [Press Space to Continue]" 
},


]

octopus_dialog = [
{
    name: "Octopus",
    msg: "Did you know octopi are incredibly intelligent? [Press Space to Continue]" 
},

{
    name: "Octopus",
    msg: "They are able to problem solve, learn, memorize, and communicate in their own ways. [Press Space to Continue]" 
},


]

starfish_dialog = [
{
    name: "Sad Fact :(",
    msg: "Starfish population has been decreasing significantly due to ocean warming and diseases like sea star wasting syndrome, which causes their limbs to decay. [Press Space to Continue]" 
},

]

whale_dialog = [

{
    name: "Blue Whale",
    msg: "Whales are some of the biggest mammals on earth. [Press Space to Continue] " 
},

{
    name: "Blue Whale",
    msg: "The blue whale specifically is actually the largest animal to be living on Earth right now. [Press Space to Continue]" 
},

{
    name: "Fun Fact!",
    msg: "Believe it or not, whales actually have hair! [Press Space to Continue]" 
},

]

anglerfish_dialog = [
{
    name: "Angler Fish",
    msg: "Angler fish are also scavengers, an important class of organisms in ecosystems that eat dead or discarded organic matter (like vultures). [Press Space to Continue]" 
},

{
    name: "Fun Fact!",
    msg: "Angler Fish help break down dead plants and animals and keep the biome healthy! [Press Space to Continue] " 
},


]

vampire_squid_dialog = [
{
    name: "Vampire Squid",
    msg: "In the midnight zone of the ocean (the depth at which no light reaches), various animals utilize bioluminescence to see and attract prey. [Press Space to Continue]" 
},

{
    name: "Vampire Squid",
    msg: "Bioluminescence is the emission of light by an organism through a chemical reaction. [Press Space to Continue]" 
},

{
    name: "Fun Fact!",
    msg: "The vampire squid uses bioluminescence to attract prey and can eject a cloud of bioluminescent mucus to distract and escape predators. [Press Space to Continue]" 
},


]

can_dialog = [
{
    name: "Sad Fact :(",
    msg: "Unfortunately, a lot of trash gets put into the ocean such as the Great Pacific Garbage Patch. [Press Space to Continue]" 
},

{
    name: "Sad Fact :(",
    msg: "This is incredibly harmful to the ocean and kills a lot of organisms.[Press Space to Continue]" 
},


]



sea_otter_dialog = [
{
    name: "Sea Otter",
    msg: "Sea otters are keystone species for kelp forests- meaning they are a species that the ecosystem heavily depends on. [Press Space to Continue]"
},

{
    name: "Sea Otter",
    msg: "If keystone species were to disappear, that ecosystem would change drastically! [Press Space to Continue]"
},

]

sea_lion_dialog = [
{
    name: "Sea Lion",
    msg: "Did you know that sea lions molt similar to snakes or arachnids? [Press Space to Continue]"
},

{
    name: "Sea Lion",
    msg: "They molt once of year to shed their fur and outer layer of skin to grow a newer and healthier coat.[Press Space to Continue]"
},



]



sea_urchin_dialog = [
{
    name: "Sea Urchin",
    msg: "Sea urchins are rapidly consuming and mowing down kelp forests due to a decline in predator populations like sea stars and sea otters. [Press Space to Continue]"
},

{
    name: "Hope!",
    msg: "Scientists are working on controlling their population before kelp forests are completely devoured due to the ecosystem imbalance. [Press Space to Continue]"
},


]



crab_dialog = [
{
    name: "Crab",
    msg: "Crabs are called decapods because they actually have ten legs, counting their claws/pincers. [Press Space to Continue]"
},

{
    name: "Crab",
    msg: "Most decapods are scavenger crustaceans. [Press Space to Continue]"
},

{
    name: "Crab",
    msg: "Since these legs are primarily on the side of their bodies, they move extremely fast sideways rather than forward or backward. [Press Space to Continue]"
},


]



stingray_dialog = [
{
    name: "Stingray",
    msg: "Kelp forest stingrays are expert masters of disguise. They flatten their diamond-shaped bodies against the sandy seafloor and gently burrow into the sediment, leaving only their eyes and spiracles exposed. [Press Space to Continue]"
},

{
    name: "Stingray",
    msg: "This clever \"sand-burrow\" camouflage lets them vanish from both predators and unsuspecting prey! [Press Space to Continue]"
},


]

seahorse_dialog = [
{
    name: "Seahorse",
    msg: "Seahorses sport truly remarkable prehensile tails; think of them as a built-in grappling hook! [Press Space to Continue]"
},

{
    name: "Seahorse",
    msg: "They wrap that tail tightly around kelp blades or coral branches to anchor themselves in place, letting them hang on securely in swirling currents while they patiently hunt tiny plankton. [Press Space to Continue]"
},


]

eel_dialog = [
{
    name: "Eel",
    msg: "Electric eels can produce up to 600V of electricity! [Press Space to Continue]"
},

{
    name: "Eel",
    msg: "They mainly use their shocking abilities to defend themselves, subdue predators, or navigate waters. [Press Space to Continue]"
},


]