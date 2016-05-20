class PlantTypesImporter

  def import
    @plant_type1 = PlantType.create(
        image_url: "/img/snake-plant.jpg",
        common_name: "Snake Plant", 
        scientific_name: "Sansevieria trifasciata", 
        description: "Sansevieria trifasciata, also called viper's bowstring hemp, 
        snake plant, mother-in-law's tongue or Saint George's sword is a species 
        of flowering plant in the family Asparagaceae, native to tropical West Africa 
        from Nigeria east to the Congo.", 
        light_requirements: "indirect sunlight",
        watering_requirements: "Water until the soil is thoroughly soaked. 
        Let these plants dry out some between waterings.",
        low_water_frequency: 28,
        high_water_frequency: 14,
        soil_change_frequency: 365,
        fertilizer_frequency: 56
        )

    @plant_type2 = PlantType.create(
        image_url: "/img/asparagus-fern.jpg",
        common_name: "Asparagus Fern", 
        scientific_name: "Asparagus aethiopicus", 
        description: "Asparagus aethiopicus, Sprenger's Asparagus, 
        is a plant native to the Cape Provinces and the Northern 
        Provinces of South Africa. Often used as an ornamental plant, 
        it is considered an invasive weed in many locations", 
        light_requirements: "must be a cool and shaded position",
        watering_requirements: "Keep the soil moist.",
        low_water_frequency: 7,
        high_water_frequency: 4,
        soil_change_frequency: 365,
        fertilizer_frequency: 30
        )    

    @plant_type3 = PlantType.create(
        image_url: "/img/dumb-cane.jpg",
        common_name: "Leopard Lily", 
        scientific_name: "Diffenbachia", 
        description: "Tropical flowering plants in the family Araceae. 
        Native to the New World Tropics from Mexico and the West Indies 
        south to Argentina.", 
        light_requirements: "The plant cannot handle full sun but 
        does appreciate good lighting",
        watering_requirements: "Soil stays moist but not wet.",
        low_water_frequency: 1,
        high_water_frequency: 1,
        soil_change_frequency: 120,
        fertilizer_frequency: 21
        )
    end
    
end
