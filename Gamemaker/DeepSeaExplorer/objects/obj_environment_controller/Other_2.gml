// Generate random coral & kelp placements
for (var i = 0; i < 10; i++) {  // Adjust number of corals
    var xPos = irandom_range(100, room_width - 100);
    var yPos = irandom_range(room_height - 200, room_height - 50);
    instance_create_layer(xPos, yPos, "Instances_CoralKelp", kelp_obj2);
}

for (var j = 0; j < 8; j++) {  // Adjust number of kelp
    var xPos = irandom_range(50, room_width - 50);
    var yPos = irandom_range(room_height - 250, room_height - 100);
    instance_create_layer(xPos, yPos, "Instances_CoralKelp", kelp_obj1);
}