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
    msg: "Jellyfish are about 95% to 98% water and don't actually have a brain, heart, or lungs." 
},

{
    name: "Fun Fact!",
    msg: "Lots of jellyfish have a very short lifespan but one, Turritopsis dohrnii, is an immortal jellyfish that can restart it's life cycle when under stress or grows old."
},

]


seaweed_dialog = [
{
    name: "Seaweed",
    msg: "These plants are incredibly important to human health and the ecosystem as they are responsible for a majority of the oxygen we breathe." 
},

{
    name: "Seaweed",
    msg: "They also form the base for the food chain in a lot of marine ecosystems."
},

]

shark_dialog = [
{
    name: "Shark",
    msg: "Although a lot of humans are afraid of sharks, they are actually a vital part of the ecosystem." 
},

{
    name: "Shark",
    msg: "They regulate prey populations and ensure they don't overpopulate and throw off an ecosystem's balance."
},

]

turtle_dialog = [
{
    name: "Turtle",
    msg: "Turtles are reptiles, meaning they have scaly skins covering their body and mostly lay eggs." 
},

{
    name: "Sad Fact :(",
    msg: "Only 1 out of 1000 can reach adulthood because as juveniles they are very vulnerable to predators."
},

]

whale_shark_dialog = [
{
    name: "Whale Shark",
    msg: "They are the largest fish in the world and are generally considered to be harmless for humans!  " 
},

]

shrimp_dialog = [
{
    name: "Shrimp",
    msg: "Shrimps are omnivores, meaning they eat both plants and animals. " 
},

{
    name: "Fun Fact!",
    msg: "There are thousands of species of shrimp; some of them are incredibly strong and can even break aquarium glass with their powerful strikes!"
},

]

plastic_rings_dialog = [
{
    name: "Plastic Rings",
    msg: "These are notorious for killing our ocean friends when they get stuck in them and can't breathe! " 
},

{
    name: "Plastic Rings",
    msg: "It is beneficial to recycle them through in-store recycling, but if not, make sure to cut up all the tight parts before throwing them in the trash."
},

]

dolphin_dialog = [
{
    name: "Dolphin",
    msg: "Dolphins communicate with each other through echolocation! " 
},

{
    name: "Dolphin",
    msg: "They can navigate by emitting sounds and sensing the sound waves that bounce off objects around them. "
},

]

fish5_dialog = [
{
    name: "Fishy Fact",
    msg: "Have you ever wondered how fish sleep underwater? " 
},

{
    name: "Fishy Fact",
    msg: "Unlike mammals, fish don’t experience sleep." 
},

{
    name: "Fishy Fact",
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
    name: "Octopus",
    msg: "Did you know octopi are incredibly intelligent?" 
},

{
    name: "Octopus",
    msg: "They are able to problem solve, learn, memorize, and communicate in their own ways." 
},


]

starfish_dialog = [
{
    name: "Sad Fact :(",
    msg: "Starfish population has been decreasing significantly due to ocean warming and diseases like sea star wasting syndrome, which causes their limbs to decay." 
},

]

whale_dialog = [

{
    name: "Blue Whale",
    msg: "Whales are some of the biggest mammals on earth. " 
},

{
    name: "Blue Whale",
    msg: "The blue whale specifically is actually the largest animal to be living on Earth right now." 
},

{
    name: "Fun Fact!",
    msg: "Believe it or not, whales actually have hair!" 
},

]

anglerfish_dialog = [
{
    name: "Angler Fish",
    msg: "Angler fish are also scavengers, an important class of organisms in ecosystems that eat dead or discarded organic matter (like vultures)." 
},

{
    name: "Fun Fact!",
    msg: "Angler Fish help break down dead plants and animals and keep the biome healthy! " 
},


]

vampire_squid_dialog = [
{
    name: "Vampire Squid",
    msg: "In the midnight zone of the ocean (the depth at which no light reaches), various animals utilize bioluminescence to see and attract prey." 
},

{
    name: "Vampire Squid",
    msg: "Bioluminescence is the emission of light by an organism through a chemical reaction." 
},

{
    name: "Fun Fact!",
    msg: "The vampire squid uses bioluminescence to attract prey and can eject a cloud of bioluminescent mucus to distract and escape predators." 
},


]

can_dialog = [
{
    name: "Sad Fact :(",
    msg: "Unfortunately, a lot of trash gets put into the ocean such as the Great Pacific Garbage Patch." 
},

{
    name: "Sad Fact :(",
    msg: "This is incredibly harmful to the ocean and kills a lot of organisms." 
},


]



sea_otter_dialog = [
{
    name: "Sea Otter",
    msg: "Sea otters are keystone species for kelp forests–meaning they are a species that the ecosystem heavily depends on. "
},

{
    name: "Sea Otter",
    msg: "If keystone species were to disappear, that ecosystem would change drastically! "
},

{
    name: "Sea Otter",
    msg: "Sea otters control sea urchin populations so they don’t overgraze on kelp!"
},

]

sea_lion_dialog = [
{
    name: "Sea Lion",
    msg: "Did you know that sea lions molt similar to snakes or arachnids?"
},

{
    name: "Sea Lion",
    msg: "They molt once of year to shed their fur and outer layer of skin to grow a newer and healthier coat."
},

{
    name: "Sea Lion",
    msg: "The new fur and skin can protect them from injury, UV rays, and maintain their hydrodynamic properties."
},


]



sea_urchin_dialog = [
{
    name: "Sea Urchin",
    msg: "Sea urchins are rapidly consuming and mowing down kelp forests due to a decline in predator populations like sea stars and sea otters. "
},

{
    name: "Hope!",
    msg: "Scientists are working on controlling their population before kelp forests are completely devoured due to the ecosystem imbalance."
},


]



crab_dialog = [
{
    name: "Crab",
    msg: "Crabs are called decapods because they actually have ten legs, counting their claws/pincers. "
},

{
    name: "Crab",
    msg: "Most decapods are scavenger crustaceans."
},

{
    name: "Crab",
    msg: "Because these legs are primarily on the side of their bodies, they move extremely fast sideways rather than forward or backward."
},


]



stingray_dialog = [
{
    name: "Stingray",
    msg: " Kelp forest stingrays are expert masters of disguise—they flatten their diamond‑shaped bodies against the sandy seafloor and gently burrow into the sediment, leaving only their eyes and spiracles exposed."
},

{
    name: "Stingray",
    msg: "This clever “sand‑burrow” camouflage lets them vanish from both predators and unsuspecting prey!"
},


]

seahorse_dialog = [
{
    name: "Seahorse",
    msg: "Seahorses sport truly remarkable prehensile tails—think of them as a built‑in grappling hook!"
},

{
    name: "Seahorse",
    msg: "They wrap that tail tightly around kelp blades or coral branches to anchor themselves in place, letting them hang on securely in swirling currents while they patiently hunt tiny plankton."
},


]

eel_dialog = [
{
    name: "Eel",
    msg: "Electric eels can produce up to 600V of electricity!"
},

{
    name: "Eel",
    msg: "They mainly use their shocking abilities to defend themselves, subdue predators, or navigate waters."
},


]






