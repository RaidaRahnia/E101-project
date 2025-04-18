/// scr_get_quiz_data(quiz_id)
/// @param quiz_id  1 = Level 1 (Sunlight Zone)
///                 2 = Level 2 (Twilight Zone)
/// @returns        An array of [ question, options array, correct_index ]

function scr_get_quiz_data(quiz_id) {
    if (quiz_id == 1) {
        // — Level 1 — Sunlight Zone
        return [
            // a) Dolphins
            ["How do dolphins communicate?",
                ["Through singing", "Through echolocation", "Through body language", "Through telepathy"],
                1
            ],
            // b) Seaweed/Algae
            ["Why is algae and seaweed important?",
                ["They are a food source for whales",
                 "They provide shelter for small fish",
                 "They produce a majority of the oxygen we breathe",
                 "They make the water clearer"],
                2
            ],
            // c) Sharks
            ["Why are sharks and predators important to an ecosystem?",
                ["They regulate prey populations",
                 "They provide food for smaller fish",
                 "They make the ocean more dangerous",
                 "They help plants grow"],
                0
            ],
            // d) Turtles
            ["What kind of animals are turtles?",
                ["Mammals", "Amphibians", "Reptiles", "Fish"],
                2
            ],
            // e) Whale Shark
            ["What is the name of the largest fish?",
                ["Great White Shark", "Blue Whale", "Megalodon", "Whale Shark"],
                3
            ],
            // f) Shrimp
            ["Shrimp has the diet of a...",
                ["Omnivore", "Carnivore", "Herbivore", "Autotroph"],
                0
            ]
        ];
    }
	else if (quiz_id == 2) {
        // — Level 2 — Kelp Forest
        return [
            // a) Sea Otter
            ["What are keystone species and why are they important?",
                 ["A species that migrates seasonally",
	             "A species upon which an entire ecosystem heavily depends",
	             "A species that lives only in kelp",
	             "A top-level predator only"],
				1
            ],
            // b) Sea Lions
            ["Why do sea lions molt?",
                ["To shed old fur and grow a healthier coat",
	             "To attract mates",
	             "To migrate long distances",
	             "To change their body color"],
	            0
            ],
            // c) Starfish (Sea Star)
            ["Which sea star manages the sea urchin population in kelp forests?",
                ["Sunflower sea star",
	             "Ochre sea star",
	             "Leather sea star",
	             "Blood sea star"],
	            0
            ],
            // d) Sea Urchin
            ["Why are scientists trying to control the sea urchin population in kelp forests?",
                ["Because they overgraze kelp and destroy habitat",
	             "Because they produce toxic chemicals",
	             "Because they increase fish populations too much",
	             "Because they block sunlight from reaching kelp"],
	            0
            ],
            // f) Crab
            ["What are decapods?",
                ["Insects with ten segments",
	             "Crustaceans with ten legs",
	             "Fish with ten fins",
	             "Mammals with ten toes"],
	            1
            ],
            // g) Stingray
            ["How do kelp forest stingrays camouflage themselves?",
	            ["By burrowing into sand with flat bodies",
	             "By emitting bioluminescent light",
	             "By flashing bright warning colors",
	             "By changing their scale patterns"],
	            0
            ],
			// h) Seahorse
            ["What adaptation allows seahorses to cling to kelp blades?",
	            ["Suction-cup fins",
	             "Prehensile tails",
	             "Sticky skin",
	             "Spiny armor"],
	            1
            ]
        ];
    }
    else if (quiz_id == 3) {
        // — Level 3 — Twilight Zone
        return [
            // b) Jellyfish organs
            ["Which organs are jellyfish missing?",
                ["Brain", "Heart", "Lungs", "All of the above"],
                3
            ],
            // b) Turritopsis dohrnii
            ["What is special about Turritopsis dohrnii?",
                ["It is immortal",
                 "It can fly",
                 "It is bioluminescent",
                 "It lives in freshwater"],
                0
            ],
            // c) Starfish decline
            ["What is responsible for declining the population of starfish?",
                ["Overfishing",
                 "Ocean warming and diseases",
                 "Pollution",
                 "Habitat loss"],
                1
            ],
            // d) Blue whale
            ["What is the biggest mammal on Earth?",
                ["Humpback Whale", "African Elephant", "Sperm Whale", "Blue Whale"],
                3
            ],
            // f) Fish memory
            ["According to studies, how long can fish retain memories?",
                ["A few seconds", "A few minutes", "Months or years", "They have no memory"],
                2
            ],
            // g) Electroreceptors
            ["What helps fish detect their prey using electrical signals?",
                ["Electroreceptors", "Lateral line system", "Vibrations", "Color changes"],
                0
            ]
        ];
    }
	else if (quiz_id == 4) {
        // — Level 4 — Midnight Zone
        return [
            // b) Jellyfish organs
            ["What class of organisms are anglerfish?",
                ["Predators", "Producers", "Scavengers", "Parasites"],
                2
            ],
            // b) Turritopsis dohrnii
            ["What is bioluminescence and how can it be used?",
                ["Camouflage for ambushing prey",
                 "Light made by a chemical reaction to attract or distract",
                 "Sonar for detecting objects",
                 "Changing body temperature to adapt "],
                1
            ],
            // c) Starfish decline
            ["Why is there a lack of dissolved oxygen in the water?",
                ["Too much sunlight",
                 "Excess salt in the water",
                 "Fish breathing too fast",
                 "Pollution and temperature changes"],
                3
            ],
            // d) Blue whale
            ["How do electric eels utilize their electricity?",
                ["To light up dark waters", "To attract mates", "To defend, hunt, and navigate",
                 "To power their gills"],
                2
            ],
            // f) Fish memory
            ["How do fish sleep ?",
                ["They sleep with their eyes open", "They never rest at all", "They hibernate like bears", "They enter a low-activity resting stage"],
                3
            ],
            // g) Electroreceptors
            ["What factors cause fish to change their color?",
                ["Camouflage, environment, and seasons", "Water pressure and speed", "Mood and diet", "Light from the sun"],
                0
            ]
        ];
    }
    else {
        // Fallback: a single dummy question
        return [
            ["Default Question?",
                ["Option A", "Option B", "Option C", "Option D"],
                0
            ]
        ];
    }
}