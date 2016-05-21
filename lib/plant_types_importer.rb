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
        watering_requirements: "water until the soil is thoroughly soaked. 
        Let these plants dry out some between waterings",
        low_water_frequency: 28,
        high_water_frequency: 14,
        soil_change_frequency: 360,
        fertilizer_frequency: 56
        )

    @plant_type2 = PlantType.create(
        image_url: "/img/asparagus-fern.jpg",
        common_name: "Asparagus Fern", 
        scientific_name: "Asparagus aethiopicus", 
        description: "Asparagus aethiopicus, Sprenger's Asparagus, 
        is a plant native to the Cape Provinces and the Northern 
        Provinces of South Africa. Often used as an ornamental plant, 
        it is considered an invasive weed in many locations.", 
        light_requirements: "must be a cool and shaded position",
        watering_requirements: "keep the soil moist",
        low_water_frequency: 6,
        high_water_frequency: 4,
        soil_change_frequency: 360,
        fertilizer_frequency: 30
        )    

    @plant_type3 = PlantType.create(
        image_url: "/img/dumb-cane.jpg",
        common_name: "Leopard Lily", 
        scientific_name: "Diffenbachia", 
        description: "Tropical flowering plants in the family Araceae. 
        Native to the New World Tropics from Mexico and the West Indies 
        south to Argentina.", 
        light_requirements: "cannot handle full sunlight but 
        does appreciate good lighting",
        watering_requirements: "soil stays moist but not wet",
        low_water_frequency: 1,
        high_water_frequency: 1,
        soil_change_frequency: 1,
        fertilizer_frequency: 1
        )

    @plant_type4 = PlantType.create(
        image_url: "/img/spider-plant.jpg",
        common_name: "Spider Plant", 
        scientific_name: "Chlorophytum comosum", 
        description: "An all-time favourite houseplant, Moore loves the 
        spider plant for its blatant urge to reproduce itself -- it sends 
        out offspring faster than you can propagate them.", 
        light_requirements: "party shaded areas to full sunlight",
        watering_requirements: "keep the soil moist.",
        low_water_frequency: 6,
        high_water_frequency: 2,
        soil_change_frequency: 240,
        fertilizer_frequency: 80
        )

    @plant_type5 = PlantType.create(
        image_url: "/img/succulents.jpg",
        common_name: "Succulents", 
        scientific_name: "Jovibarba", 
        description: "Succulents can withstand a great deal of neglect and mismanagement.", 
        light_requirements: "place near a window to make sure they get enough sunlight",
        watering_requirements: "water thoroughly only when soil begins to dry out",
        low_water_frequency: 6,
        high_water_frequency: 2,
        soil_change_frequency: 50,
        fertilizer_frequency: 30
        )

    @plant_type6 = PlantType.create(
        image_url: "/img/jade-plant.jpg",
        common_name: "Jade Plant", 
        scientific_name: "Crassula ovata", 
        description: "If well cared for, this plant can outlive you!", 
        light_requirements: "water once every one to two months in winter",
        watering_requirements: "drench and drain method",
        low_water_frequency: 3,
        high_water_frequency: 1,
        soil_change_frequency: 250,
        fertilizer_frequency: 200
        )

    @plant_type7 = PlantType.create(
        image_url: "/img/aloe-vera.jpg",
        common_name: "Aloe Vera", 
        scientific_name: "Aloe barbadensis miller", 
        description: "Known as the healing plant for its first-aid benefits, it grows very easily.", 
        light_requirements: "give your aloe good exposure to light",
        watering_requirements: "don’t water very often",
        low_water_frequency: 20,
        high_water_frequency: 10,
        soil_change_frequency: 170,
        fertilizer_frequency: 50
        )

    @plant_type8 = PlantType.create(
        image_url: "/img/amazon-elephant-ear.jpg",
        common_name: "Amazon Elephant Ear", 
        scientific_name: "Alocasia x amazonica", 
        description: "Huge, arrow-shaped leaves, ridged edges and bright white veins give the elephant ear an air of the spectacular.", 
        light_requirements: "indirect light and do not expose to direct sunlight",
        watering_requirements: "make sure the root system is moist",
        low_water_frequency: 3,
        high_water_frequency: 1,
        soil_change_frequency: 200,
        fertilizer_frequency: 150
        )

    @plant_type9 = PlantType.create(
        image_url: "/img/boston-fern.jpg",
        common_name: "Boston Fern", 
        scientific_name: "Nephrolepis exaltata", 
        description: "The Boston fern acts as a natural humidifier, absorbing common air pollutants and releasing water vapor.", 
        light_requirements: "indirect light and do not expose to direct sunlight",
        watering_requirements: "keep leaves misty",
        low_water_frequency: 3,
        high_water_frequency: 1,
        soil_change_frequency: 100,
        fertilizer_frequency: 50
        )

    @plant_type10 = PlantType.create(
        image_url: "/img/ice-cascade.jpg",
        common_name: "Ice Cascade", 
        scientific_name: "Cymbidium sarah jean", 
        description: "This hearty plant dispels the idea that orchids are only for skilled gardeners.", 
        light_requirements: "10 to 15 hours of light each day",
        watering_requirements: "keep the soil most but not wet",
        low_water_frequency: 3,
        high_water_frequency: 1,
        soil_change_frequency: 300,
        fertilizer_frequency: 150
        )

    @plant_type11 = PlantType.create(
        image_url: "/img/indoor-boxwood.jpg",
        common_name: "Indoor Boxwood", 
        scientific_name: "Buxaceae", 
        description: "Boxwood is typically grown in topiary gardens at a slow pace, but it is a great way to add greenery indoors.", 
        light_requirements: "needs partial to full sunlight exposure",
        watering_requirements: "once a week or when the soil begins to feel dry",
        low_water_frequency: 8,
        high_water_frequency: 6,
        soil_change_frequency: 220,
        fertilizer_frequency: 100
        )

    @plant_type12 = PlantType.create(
        image_url: "/img/dendrobium.jpg",
        common_name: "Dendrobium", 
        scientific_name: "Dendrobium", 
        description: "Rid the air of xylene—a pollutant found in many glues and paints—so they make wonderful housewarming gifts", 
        light_requirements: "needs partial to indirect sunlight",
        watering_requirements: "bi-weekly",
        low_water_frequency: 4,
        high_water_frequency: 2,
        soil_change_frequency: 80,
        fertilizer_frequency: 10
        )

    @plant_type13 = PlantType.create(
        image_url: "/img/palm.jpg",
        common_name: "Palm", 
        scientific_name: "Arecaceae", 
        description: "These big bad boys are known to be natural air purifiers.", 
        light_requirements: "partial to direct sunlight",
        watering_requirements: "bi-weekly to bi-monthly",
        low_water_frequency: 16,
        high_water_frequency: 4,
        soil_change_frequency: 40,
        fertilizer_frequency: 40
        )

    @plant_type14 = PlantType.create(
        image_url: "/img/happy-plants.jpg",
        common_name: "Happy plant", 
        scientific_name: "Cornstalk dracaena", 
        description: "Happy Plants are extremely hardy and many have survived from the seventies until today.", 
        light_requirements: "partial shade and out of direct heat of the sun",
        watering_requirements: "dry between watering",
        low_water_frequency: 10,
        high_water_frequency: 8,
        soil_change_frequency: 140,
        fertilizer_frequency: 60
        )    

    @plant_type15 = PlantType.create(
        image_url: "/img/dracaena.jpg",
        common_name: "Dracaena", 
        scientific_name: "Dracaena", 
        description: "Happy Plants are extremely hardy and many have survived from the seventies until today.", 
        light_requirements: "partial shade and out of direct heat of the sun",
        watering_requirements: "dry between watering",
        low_water_frequency: 10,
        high_water_frequency: 8,
        soil_change_frequency: 140,
        fertilizer_frequency: 100
        )    

    @plant_type16 = PlantType.create(
        image_url: "/img/string-of-pearls.jpg",
        common_name: "String of pearls", 
        scientific_name: "Senecio rowleyanu", 
        description: "Rugid and hearty like a good clam chowder stew.", 
        light_requirements: "grows well in bright light",
        watering_requirements: "survives long periods without water",
        low_water_frequency: 60,
        high_water_frequency: 40,
        soil_change_frequency: 200,
        fertilizer_frequency: 160
        )  

    @plant_type17 = PlantType.create(
        image_url: "/img/monstera.jpg",
        common_name: "Monstera", 
        scientific_name: "Araceae", 
        description: "Also cultivated for its edible fruit which tastes like a combination of banana and pineapple.", 
        light_requirements: "direct to indirect sunlight required",
        watering_requirements: "water through to roots",
        low_water_frequency: 10,
        high_water_frequency: 6,
        soil_change_frequency: 400,
        fertilizer_frequency: 300
        )  

    @plant_type18 = PlantType.create(
        image_url: "/img/devils-ivy.jpg",
        common_name: "Devil's Ivy", 
        scientific_name: "Epipremnum aureum", 
        description: "It is quite efficient at cleansing the air of pollutants, such as benzene, trichloroethylene, xylene and formaldehyde.", 
        light_requirements: "shady or indirect sunlight",
        watering_requirements: "goes long periods without water",
        low_water_frequency: 40,
        high_water_frequency: 30,
        soil_change_frequency: 50,
        fertilizer_frequency: 30
        )

    @plant_type19 = PlantType.create(
        image_url: "/img/flamingo.jpg",
        common_name: "Flamingo Lily", 
        scientific_name: "Hedera helix", 
        description: "Not for green thumbs -- definately needs care. Poisonous!", 
        light_requirements: "plenty of indirect sunlight",
        watering_requirements: "keep moist or humid",
        low_water_frequency: 3,
        high_water_frequency: 1,
        soil_change_frequency: 20,
        fertilizer_frequency: 10
        )

    @plant_type20 = PlantType.create(
        image_url: "/img/barberton.jpg",
        common_name: "Barberton Daisy", 
        scientific_name: "Gerbera jamesonii", 
        description: "Needs care but helps cleanse the air of harmful particles.", 
        light_requirements: "plenty of sunlight",
        watering_requirements: "plenty of water and keep well drained",
        low_water_frequency: 3,
        high_water_frequency: 1,
        soil_change_frequency: 30,
        fertilizer_frequency: 20
        )

    @plant_type21 = PlantType.create(
        image_url: "/img/weeping.jpg",
        common_name: "Weeping Fig", 
        scientific_name: "Ficus benjamina", 
        description: "This low-maintenance, evergreen plant grows well both inside and out.", 
        light_requirements: "bright indirect natural sunlight",
        watering_requirements: "water frequently, but avoid root rot",
        low_water_frequency: 3,
        high_water_frequency: 1,
        soil_change_frequency: 40,
        fertilizer_frequency: 30
        )

    @plant_type22 = PlantType.create(
        image_url: "/img/baby.jpg",
        common_name: "Baby Tears", 
        scientific_name: "Soleirolia soleirolii", 
        description: "Excellent, moss-like ground cover plant for dish gardens and open terrariums.", 
        light_requirements: "needs moderate sunlight",
        watering_requirements: "soil should be constantly moist but avoid on foliage",
        low_water_frequency: 3,
        high_water_frequency: 1,
        soil_change_frequency: 10,
        fertilizer_frequency: 10
        )

    @plant_type23 = PlantType.create(
        image_url: "/img/coffee.jpg",
        common_name: "Coffee Plant", 
        scientific_name: "Coffea arabica", 
        description: "Plant in fast draining soil and best in filtered sunlight.", 
        light_requirements: "needs moderate sunlight",
        watering_requirements: "soil should moist but never soggy",
        low_water_frequency: 14,
        high_water_frequency: 10,
        soil_change_frequency: 14,
        fertilizer_frequency: 10
        )

    @plant_type24 = PlantType.create(
        image_url: "/img/panda.jpg",
        common_name: "Panda Plant", 
        scientific_name: "Kalanchoe tomentosa", 
        description: "Panda plants prefer average to warm temperatures.", 
        light_requirements: "prefers bright light",
        watering_requirements: "potted in well draining soil",
        low_water_frequency: 10,
        high_water_frequency: 8,
        soil_change_frequency: 12,
        fertilizer_frequency: 8
        )
    end 
end










