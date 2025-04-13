// obj_chest: Collision Event with obj_player

// Only allow this if you haven’t already triggered an interaction.
if (!can_trigger_quiz) return;

// Set a flag to indicate that the chest is interactable.
interactable = true;

// Create the interaction icon above the chest if it doesn't already exist.
// Position it e.g., 50 pixels above the chest.
if (!instance_exists(interaction)) {
    interaction = instance_create_layer(x + 20, y - 10, layer, obj_interaction_icon);
}