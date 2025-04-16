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
            ["What’s the name of the largest fish?",
                ["Great White Shark", "Blue Whale", "Megalodon", "Whale Shark"],
                3
            ],
            // f) Shrimp
            ["What kind of animal is shrimp?",
                ["Omnivore", "Carnivore", "Herbivore", "None of the above"],
                0
            ]
        ];
    }
    else if (quiz_id == 2) {
        // — Level 2 — Twilight Zone
        return [
            // b) Jellyfish organs
            ["What organs are jellyfish missing?",
                ["Brain", "Heart", "Lungs", "All of the above"],
                3
            ],
            // b) Turritopsis dohrnii
            ["What is special about Turritopsis dohrnii?",
                ["It is an immortal jellyfish",
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