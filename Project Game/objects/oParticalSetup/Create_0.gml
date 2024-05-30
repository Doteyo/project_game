particalSystem = part_system_create_layer("Instance", 0);
parcticalHit = part_type_create();

part_type_sprite(parcticalHit, sExp, 0,0,0);
part_type_size(parcticalHit, 1.5,2, 0.1,0);
part_type_life(parcticalHit, 5,15);
part_type_alpha3(parcticalHit, 1,0.6,0.2);
part_type_orientation(parcticalHit, 0,359,0,0,0);

parcticalSpark = part_type_create();

part_type_sprite(parcticalSpark, sP, 0,0,0);
part_type_size(parcticalSpark, 0.8,1.4, -0.01,0);
part_type_life(parcticalSpark, 25,30);
part_type_alpha3(parcticalSpark, 1,0.8,0.1);
part_type_orientation(parcticalSpark, 0,359,0,0,0);
part_type_speed(parcticalSpark, 2.4, -0.1, 0, 0);
part_type_direction(parcticalSpark, 0,359,0,0);
part_type_color3(parcticalSpark, 45823, 829418, 952788);


