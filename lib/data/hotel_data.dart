class Hotel {
  final String name;
  final String imageUrl;
  final String description;
  final String location;
  final double price;
  final int numberOfReviews;
  final double averageRating;

  Hotel({
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.location,
    required this.price,
    required this.numberOfReviews,
    required this.averageRating,
  });
}

List<Hotel> hotels = [
  Hotel(
    name: "Sunset Paradise",
    imageUrl: "assets/images/hotel1.png",
    description:
        "Sunset Paradise is the ultimate escape for those looking to relax and unwind. Nestled on the pristine beaches of Miami, this luxurious resort offers breathtaking ocean views, white sandy shores, and world-class amenities that cater to both couples and families. The resort features multiple swimming pools, a private beach area, fine dining restaurants serving international cuisine, and a full-service spa offering a wide range of treatments to rejuvenate your body and mind. Guests can also enjoy water sports, yoga sessions on the beach, and live entertainment in the evenings. The rooms are spacious and elegantly designed, with floor-to-ceiling windows that let you soak in the beauty of the surroundings. Each room comes with modern amenities like high-speed Wi-Fi, flat-screen TVs, and plush bedding to ensure a comfortable stay.",
    location: "Miami, FL",
    price: 249.99,
    numberOfReviews: 234,
    averageRating: 4.7,
  ),
  Hotel(
    name: "Mountain Escape",
    imageUrl: "assets/images/hotel2.png",
    description:
        "Mountain Escape is a luxurious lodge nestled in the heart of the Aspen mountains, offering the perfect getaway for nature enthusiasts and adventure seekers. With panoramic views of snow-capped peaks, this stunning lodge provides access to world-class hiking trails, ski slopes, and mountain biking paths. Guests can unwind in the cozy cabins, each equipped with a fireplace, a private balcony, and rustic yet modern décor. The lodge also offers an exclusive spa that features hot stone massages, facials, and hydrotherapy treatments to help you relax after a day of outdoor activities. Enjoy gourmet meals at the on-site restaurant, where chefs use locally sourced ingredients to create dishes that reflect the region's culinary heritage. In the evenings, gather around the fire pit with fellow travelers and exchange stories under the starry skies.",
    location: "Aspen, CO",
    price: 399.99,
    numberOfReviews: 150,
    averageRating: 4.9,
  ),
  Hotel(
    name: "City Lights Hotel",
    imageUrl: "assets/images/hotel3.png",
    description:
        "City Lights Hotel is the epitome of urban luxury, located in the vibrant heart of New York City. This chic hotel offers a modern aesthetic, with sleek furnishings, floor-to-ceiling windows, and state-of-the-art amenities. The hotel’s prime location allows guests to easily access iconic landmarks such as Times Square, Central Park, and the Empire State Building. City Lights Hotel boasts a rooftop bar with panoramic views of the city skyline, where guests can sip on craft cocktails while watching the sunset over the Hudson River. Each room is designed with comfort in mind, featuring plush bedding, a mini bar, and high-speed Wi-Fi. The hotel’s on-site restaurant serves a fusion of international cuisines, and the concierge team is always available to help guests book tickets to Broadway shows, arrange city tours, or provide personalized recommendations for dining and entertainment. Whether you’re in New York for business or leisure, City Lights Hotel offers an unparalleled experience in the city that never sleeps.",
    location: "New York, NY",
    price: 319.99,
    numberOfReviews: 412,
    averageRating: 4.6,
  ),
  Hotel(
    name: "Lakeside Resort",
    imageUrl: "assets/images/hotel4.png",
    description:
        "Lakeside Resort is a haven for those who love the great outdoors, offering a peaceful retreat on the shores of Lake Tahoe. This rustic yet elegant resort provides direct access to the lake, where guests can enjoy activities like fishing, kayaking, and boating. The resort features well-appointed cabins with lake views, as well as a range of amenities designed to enhance your stay, including a heated pool, hot tubs, and a fully equipped fitness center. Guests can dine at the lakeside restaurant, which specializes in fresh seafood and farm-to-table dishes. For those seeking relaxation, the resort's spa offers a variety of treatments, including massages, facials, and body wraps. In the winter, Lakeside Resort transforms into a winter wonderland, with easy access to nearby ski slopes and snowshoeing trails. Whether you're visiting in the summer or winter, Lakeside Resort promises a memorable stay in one of the most beautiful natural settings in the country.",
    location: "Lake Tahoe, NV",
    price: 279.99,
    numberOfReviews: 198,
    averageRating: 4.5,
  ),
  Hotel(
    name: "Coastal Retreat",
    imageUrl: "assets/images/hotel5.png",
    description:
        "Coastal Retreat is a luxurious beachfront resort located on the stunning shores of Maui. With its private white sandy beach and crystal-clear waters, this resort is the perfect destination for those seeking a tropical escape. The resort features private bungalows, each with its own plunge pool and ocean views, providing guests with the ultimate in privacy and comfort. Coastal Retreat offers a variety of activities, including snorkeling, paddleboarding, and sunset cruises. Guests can indulge in gourmet dining at the resort's signature restaurant, which serves fresh, locally sourced seafood and other Hawaiian delicacies. The resort also features a full-service spa, where guests can enjoy massages, facials, and body treatments inspired by traditional Hawaiian healing practices. Whether you're looking to relax on the beach, explore the island's natural beauty, or enjoy the resort's many amenities, Coastal Retreat offers a one-of-a-kind vacation experience.",
    location: "Maui, HI",
    price: 529.99,
    numberOfReviews: 320,
    averageRating: 4.8,
  ),
  Hotel(
    name: "The Grand Royal",
    imageUrl: "assets/images/hotel6.png",
    description:
        "The Grand Royal is a historic five-star hotel located in the heart of Paris, offering guests an opulent experience in one of the world’s most romantic cities. The hotel features grand architecture, with lavish interiors adorned with crystal chandeliers, marble floors, and elegant furnishings. Each room is a blend of classic French design and modern comfort, with luxurious bedding, state-of-the-art technology, and breathtaking views of the Eiffel Tower or the Seine River. Guests can enjoy fine dining at the hotel's Michelin-starred restaurant, which serves French haute cuisine prepared by renowned chefs. The Grand Royal also offers a range of amenities, including a world-class spa, a fitness center, and an indoor swimming pool. The hotel's central location makes it easy to explore Paris’s famous landmarks, including the Louvre, Notre-Dame, and the Champs-Élysées. Whether you're visiting for a romantic getaway or a luxury business trip, The Grand Royal promises an unforgettable stay.",
    location: "Paris, France",
    price: 599.99,
    numberOfReviews: 130,
    averageRating: 4.9,
  ),
  Hotel(
    name: "The Downtown Oasis",
    imageUrl: "assets/images/hotel7.png",
    description:
        "The Downtown Oasis is a modern and stylish hotel located in the bustling heart of San Francisco. With its sleek design, contemporary décor, and cutting-edge technology, this hotel offers a chic urban retreat for both business travelers and tourists. The Downtown Oasis features a rooftop pool with panoramic views of the Golden Gate Bridge and the Bay Area, as well as a state-of-the-art fitness center and a trendy lounge bar. Each room is equipped with high-speed Wi-Fi, a smart TV, and a rainfall shower. The hotel’s on-site restaurant serves a fusion of Californian and international cuisines, using organic and locally sourced ingredients. Located just steps away from Union Square, Fisherman’s Wharf, and the iconic cable cars, The Downtown Oasis is the perfect base for exploring all that San Francisco has to offer. Whether you're in town for work or leisure, this hotel provides a comfortable and convenient stay in the city by the bay.",
    location: "San Francisco, CA",
    price: 329.99,
    numberOfReviews: 215,
    averageRating: 4.3,
  ),
  Hotel(
    name: "Safari Lodge",
    imageUrl: "assets/images/hotel8.png",
    description:
        "Safari Lodge offers a unique and adventurous experience in the heart of the African wilderness. Located in Kenya, this luxury lodge provides guests with the opportunity to embark on thrilling safari excursions, where they can observe wildlife in their natural habitat. The lodge features spacious and luxurious tents, each with an en-suite bathroom, private veranda, and stunning views of the savannah. Safari Lodge also offers guided tours, led by experienced rangers, where guests can spot the Big Five, including lions, elephants, and rhinoceros. After a day of adventure, guests can unwind at the lodge's infinity pool or enjoy a gourmet meal at the open-air restaurant. The lodge's spa offers a range of treatments, including massages and facials, all designed to help guests relax and rejuvenate. Whether you're looking for an unforgettable wildlife experience or a tranquil retreat in nature, Safari Lodge is the perfect destination for your African adventure.",
    location: "Kenya, Africa",
    price: 689.99,
    numberOfReviews: 95,
    averageRating: 4.7,
  ),
  Hotel(
    name: "The Mountain Lodge",
    imageUrl: "assets/images/hotel9.png",
    description:
        "The Mountain Lodge is a charming retreat nestled in the picturesque town of Zermatt, Switzerland. With its traditional alpine architecture and cozy atmosphere, this lodge offers a perfect blend of rustic charm and modern comfort. Guests can enjoy a range of outdoor activities, including skiing, snowboarding, and snowshoeing, with access to some of the best slopes in the Swiss Alps. The lodge features spacious rooms with mountain views, each equipped with modern amenities such as high-speed Wi-Fi, flat-screen TVs, and luxurious bedding. Guests can relax by the fireplace in the lodge's lounge or enjoy a meal at the on-site restaurant, which serves Swiss specialties and international dishes. The lodge also offers a spa with a sauna, hot tubs, and massage services, providing the perfect way to unwind after a day on the slopes. Whether you're visiting in the winter for skiing or in the summer for hiking, The Mountain Lodge offers a cozy and welcoming stay in the Swiss Alps.",
    location: "Zermatt, Switzerland",
    price: 399.99,
    numberOfReviews: 178,
    averageRating: 4.6,
  ),
  Hotel(
    name: "Tropical Paradise",
    imageUrl: "assets/images/hotel10.png",
    description:
        "Tropical Paradise is a luxury beachfront resort located on the beautiful island of Bora Bora. With its crystal-clear waters, white sandy beaches, and lush tropical gardens, this resort offers a true island escape. Guests can stay in overwater bungalows, each with direct access to the lagoon, or opt for a beachfront villa with a private pool. The resort offers a range of activities, including snorkeling, diving, and sunset cruises, as well as cultural experiences such as Polynesian dance performances and traditional cooking classes. The resort's spa offers a variety of treatments, including massages and facials, using local ingredients such as coconut oil and tropical flowers. Guests can dine at the resort's signature restaurant, which serves fresh seafood and other island-inspired dishes. Whether you're looking for adventure or relaxation, Tropical Paradise offers the ultimate tropical getaway.",
    location: "Bora Bora, French Polynesia",
    price: 999.99,
    numberOfReviews: 350,
    averageRating: 4.9,
  ),
  Hotel(
    name: "Desert Mirage Resort",
    imageUrl: "assets/images/hotel11.png",
    description:
        "Desert Mirage Resort is a luxurious oasis in the heart of the Sahara Desert, offering an unforgettable experience of solitude, serenity, and stunning natural beauty. This exclusive resort features traditional adobe-style villas, each equipped with modern amenities, private terraces, and plunge pools that overlook the vast desert dunes. Guests can embark on camel safaris, stargazing sessions, and hot air balloon rides that provide a bird's-eye view of the golden sands below. The resort's wellness center offers rejuvenating spa treatments using local ingredients like argan oil and desert herbs, while the on-site restaurant serves gourmet dishes inspired by North African flavors. Guests can also unwind by the infinity pool, which appears to blend seamlessly with the horizon. Whether you're looking to explore the mysteries of the desert or relax in one of the most peaceful settings in the world, Desert Mirage Resort promises a unique and unforgettable experience.",
    location: "Sahara Desert, Morocco",
    price: 849.99,
    numberOfReviews: 220,
    averageRating: 4.8,
  ),
  Hotel(
    name: "Island Dreams Resort",
    imageUrl: "assets/images/hotel12.png",
    description:
        "Island Dreams Resort is the quintessential tropical paradise, located on a private island in the Maldives. This all-inclusive resort features overwater villas, each with direct access to the turquoise lagoon below, providing guests with the ultimate island escape. The villas are equipped with private infinity pools, outdoor showers, and glass floors, allowing you to watch the vibrant marine life swim beneath your feet. Guests can enjoy a wide range of water activities, including snorkeling, diving, and paddleboarding, or simply relax on the pristine beach with a cocktail in hand. The resort also offers fine dining options, with an emphasis on fresh seafood and international cuisine, as well as a spa that specializes in traditional Maldivian treatments. Whether you're looking for adventure or relaxation, Island Dreams Resort offers the perfect setting for a once-in-a-lifetime vacation.",
    location: "Maldives",
    price: 1299.99,
    numberOfReviews: 415,
    averageRating: 4.9,
  ),
  Hotel(
    name: "The Royal Castle",
    imageUrl: "assets/images/hotel13.png",
    description:
        "The Royal Castle is a majestic hotel that combines history, luxury, and unparalleled service in the heart of Edinburgh. This grand hotel is set in a centuries-old castle, complete with turrets, stone walls, and medieval charm. The rooms are elegantly furnished with a blend of antique and contemporary décor, offering a sense of timeless sophistication. Guests can dine at the castle’s fine-dining restaurant, which serves traditional Scottish cuisine made with locally sourced ingredients. The Royal Castle also offers private tours of the castle grounds, as well as whisky-tasting sessions, where guests can sample some of Scotland’s finest spirits. With its stunning views of the Scottish Highlands and its proximity to iconic landmarks like Edinburgh Castle and the Royal Mile, The Royal Castle offers an extraordinary stay steeped in history and culture.",
    location: "Edinburgh, Scotland",
    price: 649.99,
    numberOfReviews: 275,
    averageRating: 4.8,
  ),
  Hotel(
    name: "Ocean Breeze Resort",
    imageUrl: "assets/images/hotel14.png",
    description:
        "Ocean Breeze Resort is a laid-back yet luxurious beachfront property located along the stunning shores of Bondi Beach in Sydney. This resort offers a relaxed atmosphere with contemporary, beach-chic design. The rooms feature large windows and balconies that allow you to enjoy the fresh ocean breeze and panoramic views of the coastline. Guests can spend their days lounging by the pool, surfing the famous Bondi waves, or exploring the local beachside cafes and boutiques. The resort’s restaurant specializes in fresh seafood, including the catch of the day straight from the ocean. With a full-service spa offering treatments that incorporate native Australian ingredients, Ocean Breeze Resort is the perfect destination for anyone looking to experience Sydney’s beach culture in style.",
    location: "Sydney, Australia",
    price: 499.99,
    numberOfReviews: 350,
    averageRating: 4.6,
  ),
  Hotel(
    name: "Jungle Hideaway",
    imageUrl: "assets/images/hotel15.png",
    description:
        "Jungle Hideaway is an eco-luxury resort hidden deep in the Amazon Rainforest, offering an extraordinary and immersive nature experience. This secluded resort consists of thatched-roof bungalows, elevated on stilts to blend harmoniously with the surrounding jungle. Guests can enjoy guided rainforest tours led by local experts, who share their knowledge of the diverse flora and fauna that inhabit the area. For the more adventurous, there are opportunities to canoe down jungle rivers, spot exotic wildlife, and visit indigenous communities. After a day of exploration, guests can return to the resort for a rejuvenating treatment at the jungle spa or enjoy a gourmet meal at the open-air restaurant, which specializes in Amazonian cuisine. Jungle Hideaway is perfect for nature lovers who want to experience the wonders of the rainforest without compromising on comfort.",
    location: "Amazon Rainforest, Brazil",
    price: 689.99,
    numberOfReviews: 175,
    averageRating: 4.7,
  ),
  Hotel(
    name: "Crystal Peaks Resort",
    imageUrl: "assets/images/hotel16.png",
    description:
        "Crystal Peaks Resort is a stunning alpine retreat located in the heart of the Rocky Mountains. Offering a perfect blend of adventure and luxury, this resort is ideal for those seeking a winter getaway. Guests can enjoy world-class skiing and snowboarding on nearby slopes, or relax by the fireplace in one of the resort’s elegant suites. Each suite is designed with rustic wooden beams, stone fireplaces, and large windows that showcase breathtaking mountain views. The resort offers a variety of amenities, including a spa, indoor and outdoor hot tubs, and gourmet dining options. In the summer, Crystal Peaks Resort transforms into a hub for hiking, mountain biking, and fly-fishing. Whether you’re visiting for a winter wonderland experience or a summer mountain adventure, Crystal Peaks Resort is the perfect destination for nature enthusiasts and luxury seekers alike.",
    location: "Rocky Mountains, USA",
    price: 549.99,
    numberOfReviews: 320,
    averageRating: 4.8,
  ),
  Hotel(
    name: "The Zen Retreat",
    imageUrl: "assets/images/hotel17.png",
    description:
        "The Zen Retreat is a peaceful sanctuary located in the tranquil hills of Kyoto, Japan. Designed to offer a sense of calm and serenity, this boutique hotel is surrounded by beautifully landscaped Zen gardens and ancient temples. Each room is minimalist in design, featuring traditional Japanese elements such as tatami mats, sliding shoji doors, and futon beds. Guests can participate in daily meditation and yoga sessions or take a stroll through the serene gardens. The on-site spa offers a variety of treatments, including Japanese onsen baths and shiatsu massages. Guests can also enjoy traditional kaiseki meals, prepared with fresh, seasonal ingredients. The Zen Retreat is the perfect place to escape the hustle and bustle of daily life and immerse yourself in the peaceful atmosphere of Japan's cultural heart.",
    location: "Kyoto, Japan",
    price: 479.99,
    numberOfReviews: 285,
    averageRating: 4.9,
  ),
  Hotel(
    name: "The Pearl Palace",
    imageUrl: "assets/images/hotel18.png",
    description:
        "The Pearl Palace is a lavish hotel located on the glistening shores of the Persian Gulf, offering guests a luxurious experience like no other. This palatial hotel is known for its opulent interiors, featuring grand chandeliers, marble floors, and gold accents throughout. Each room is a suite, offering panoramic views of the gulf and equipped with state-of-the-art amenities, including private plunge pools, 24-hour butler service, and smart home technology. Guests can dine at the hotel’s world-class restaurants, which serve international cuisine, or relax by the infinity pool that overlooks the ocean. The Pearl Palace also boasts a private beach, a full-service spa, and a range of water sports activities, making it the ultimate destination for luxury and relaxation.",
    location: "Doha, Qatar",
    price: 1299.99,
    numberOfReviews: 195,
    averageRating: 4.9,
  ),
  Hotel(
    name: "Aurora Borealis Lodge",
    imageUrl: "assets/images/hotel19.png",
    description:
        "Aurora Borealis Lodge offers a magical experience in the remote wilderness of Norway, where guests can witness the breathtaking natural phenomenon of the Northern Lights. This boutique lodge is designed to maximize views of the aurora, with glass-ceilinged cabins that allow you to watch the lights from the comfort of your bed. The lodge also offers guided Northern Lights tours, dog sledding, snowshoeing, and ice fishing adventures. After a day of exploring the Arctic, guests can warm up by the fire in the lodge’s cozy lounge or enjoy a traditional Norwegian meal at the on-site restaurant. Aurora Borealis Lodge is the perfect destination for travelers seeking an unforgettable adventure under the stars.",
    location: "Tromsø, Norway",
    price: 799.99,
    numberOfReviews: 180,
    averageRating: 4.7,
  ),
  Hotel(
    name: "The Royal Garden",
    imageUrl: "assets/images/hotel20.png",
    description:
        "The Royal Garden is a luxurious urban oasis located in the heart of London. Set amidst beautifully manicured gardens, this five-star hotel offers an elegant escape from the city's hustle and bustle. The rooms are tastefully decorated with classic British design elements, featuring plush furnishings, marble bathrooms, and large windows that overlook the gardens. Guests can indulge in afternoon tea in the hotel's grand lounge, dine at the Michelin-starred restaurant, or enjoy a treatment at the full-service spa. With its prime location near iconic landmarks such as Buckingham Palace and Hyde Park, The Royal Garden offers the perfect blend of luxury and convenience for travelers seeking to explore London in style.",
    location: "London, England",
    price: 799.99,
    numberOfReviews: 300,
    averageRating: 4.8,
  ),
  Hotel(
    name: "Mountain Serenity Lodge",
    imageUrl: "assets/images/hotel21.png",
    description:
        "Mountain Serenity Lodge is nestled high in the Swiss Alps, offering guests a tranquil escape amidst some of the most breathtaking natural landscapes in the world. The lodge features rustic wooden chalets, each equipped with modern amenities and cozy fireplaces to keep you warm after a day on the slopes. Guests can enjoy skiing, snowboarding, or simply taking in the stunning mountain views from their private balconies. The lodge offers gourmet meals with ingredients sourced from local farms, as well as a full-service spa with alpine-inspired treatments. For those looking for adventure, guided hikes and paragliding experiences are also available. Mountain Serenity Lodge is perfect for nature lovers who want to combine outdoor activities with luxurious accommodations.",
    location: "Swiss Alps, Switzerland",
    price: 999.99,
    numberOfReviews: 290,
    averageRating: 4.8,
  ),
  Hotel(
    name: "Tropical Paradise Retreat",
    imageUrl: "assets/images/hotel22.png",
    description:
        "Tropical Paradise Retreat is a luxurious beachfront resort located on the shores of Phuket, Thailand. The resort features private villas with infinity pools, open-air living spaces, and direct access to the beach. Guests can enjoy a range of activities, including snorkeling, scuba diving, and island-hopping tours. The on-site spa offers traditional Thai massages and treatments, while the restaurant serves authentic Thai cuisine, made with fresh, local ingredients. The resort’s secluded location ensures peace and privacy, making it an ideal destination for honeymooners and couples looking for a romantic getaway.",
    location: "Phuket, Thailand",
    price: 649.99,
    numberOfReviews: 250,
    averageRating: 4.7,
  ),
  Hotel(
    name: "Safari Sunset Lodge",
    imageUrl: "assets/images/hotel23.png",
    description:
        "Safari Sunset Lodge offers an unforgettable safari experience in the heart of the African savannah. Located on a private game reserve, the lodge provides luxury tented accommodations, each with a private veranda offering stunning views of the surrounding wilderness. Guests can embark on daily game drives to see the Big Five, enjoy bush walks with experienced guides, or relax by the lodge’s infinity pool as the sun sets over the savannah. The lodge’s restaurant serves gourmet meals, with an emphasis on locally sourced ingredients. At night, guests can gather around the campfire to share stories and enjoy stargazing in the clear African sky. Safari Sunset Lodge is perfect for those seeking adventure and a true connection with nature.",
    location: "Kruger National Park, South Africa",
    price: 1099.99,
    numberOfReviews: 180,
    averageRating: 4.9,
  ),
  Hotel(
    name: "The Emerald Palace",
    imageUrl: "assets/images/hotel24.png",
    description:
        "The Emerald Palace is a luxurious beachfront resort located on the pristine shores of Bali. Known for its opulent design and world-class service, this resort offers a unique blend of traditional Balinese architecture and modern luxury. Each suite is decorated with rich textiles, intricate wood carvings, and stunning views of the Indian Ocean. Guests can relax by the resort’s infinity pool, take a yoga class on the beach, or indulge in a spa treatment at the full-service wellness center. The resort’s restaurant serves gourmet Indonesian cuisine, using the freshest ingredients from the island. With its prime location and exceptional amenities, The Emerald Palace offers an unforgettable tropical escape.",
    location: "Bali, Indonesia",
    price: 849.99,
    numberOfReviews: 320,
    averageRating: 4.8,
  ),
  Hotel(
    name: "The Glacier Lodge",
    imageUrl: "assets/images/hotel25.png",
    description:
        "The Glacier Lodge is an eco-friendly luxury resort located in the remote wilderness of Patagonia. Surrounded by towering mountains and pristine glaciers, this lodge offers an immersive experience in one of the world’s most breathtaking natural environments. The lodge features modern, minimalist design, with floor-to-ceiling windows that allow guests to take in the stunning views. Guests can embark on guided glacier hikes, explore the nearby fjords by kayak, or relax in the lodge’s outdoor hot tubs. The on-site restaurant serves locally sourced, organic meals, and the lodge’s commitment to sustainability is evident in every aspect of its operations. The Glacier Lodge is perfect for adventurous travelers who want to experience the beauty of Patagonia in comfort and style.",
    location: "Patagonia, Chile",
    price: 1299.99,
    numberOfReviews: 170,
    averageRating: 4.9,
  ),
  Hotel(
    name: "The Marble Palace",
    imageUrl: "assets/images/hotel26.png",
    description:
        "The Marble Palace is a five-star hotel located in the heart of Rome, offering guests a luxurious stay in one of the most historic cities in the world. The hotel is housed in a grand Renaissance-era building, featuring opulent interiors adorned with marble columns, crystal chandeliers, and rich tapestries. Each room is elegantly furnished, with large windows that offer views of the city’s iconic landmarks, including the Colosseum and the Vatican. Guests can enjoy fine dining at the hotel’s rooftop restaurant, which offers panoramic views of the city, or relax at the full-service spa. With its central location and world-class amenities, The Marble Palace is the perfect base for exploring the rich history and culture of Rome.",
    location: "Rome, Italy",
    price: 799.99,
    numberOfReviews: 390,
    averageRating: 4.8,
  ),
  Hotel(
    name: "The Cliffside Villa",
    imageUrl: "assets/images/hotel27.png",
    description:
        "The Cliffside Villa is a stunning boutique hotel perched on the cliffs of Santorini, offering breathtaking views of the Aegean Sea. Each villa features minimalist design, with whitewashed walls, infinity pools, and outdoor terraces that allow guests to enjoy the famous Santorini sunsets. The hotel offers personalized services, including private chefs, guided tours of the island, and yacht rentals for exploring the nearby islands. The on-site spa specializes in treatments using local ingredients like volcanic ash and olive oil. The Cliffside Villa is the perfect destination for those seeking a luxurious and romantic escape in one of the most beautiful settings in the world.",
    location: "Santorini, Greece",
    price: 899.99,
    numberOfReviews: 260,
    averageRating: 4.9,
  ),
  Hotel(
    name: "Urban Luxe Hotel",
    imageUrl: "assets/images/hotel28.png",
    description:
        "Urban Luxe Hotel is a sleek and modern hotel located in the vibrant city of Tokyo. Known for its contemporary design and cutting-edge technology, this hotel offers a unique urban experience. Each room is equipped with smart home systems, allowing guests to control lighting, temperature, and entertainment with a touch of a button. The hotel’s rooftop bar offers stunning views of the Tokyo skyline, while the on-site restaurant serves a fusion of Japanese and international cuisine. Guests can also enjoy the hotel’s fitness center, spa, and indoor pool. With its prime location near Tokyo’s top attractions, including the famous Shibuya Crossing and the Meiji Shrine, Urban Luxe Hotel is the perfect choice for travelers looking to explore the city in style.",
    location: "Tokyo, Japan",
    price: 649.99,
    numberOfReviews: 410,
    averageRating: 4.7,
  ),
  Hotel(
    name: "The Forest Haven",
    imageUrl: "assets/images/hotel29.png",
    description:
        "The Forest Haven is a secluded eco-lodge located in the heart of the Canadian Rockies. Surrounded by towering pine trees and crystal-clear lakes, this lodge offers a peaceful retreat for nature lovers. The lodge features cozy cabins, each with wood-burning fireplaces and private decks overlooking the forest. Guests can enjoy a range of outdoor activities, including hiking, canoeing, and wildlife watching. The lodge also offers guided nature walks and yoga classes in the forest. The on-site restaurant serves organic, locally sourced meals, with a focus on sustainability. The Forest Haven is perfect for those looking to escape the hustle and bustle of city life and reconnect with nature.",
    location: "Banff, Canada",
    price: 599.99,
    numberOfReviews: 230,
    averageRating: 4.8,
  ),
  Hotel(
    name: "The Royal Oasis",
    imageUrl: "assets/images/hotel30.png",
    description:
        "The Royal Oasis is a luxurious desert resort located in the Arabian Peninsula. This opulent hotel is designed to resemble a traditional Arabian palace, complete with intricate mosaics, archways, and courtyards filled with palm trees and fountains. Guests can relax in spacious suites, each with private balconies that offer views of the desert dunes. The resort offers a range of activities, including camel rides, dune bashing, and guided desert tours. The on-site spa offers treatments inspired by ancient Arabian traditions, while the restaurant serves gourmet Middle Eastern cuisine. The Royal Oasis is perfect for those seeking a luxurious escape in the heart of the desert.",
    location: "Abu Dhabi, UAE",
    price: 999.99,
    numberOfReviews: 195,
    averageRating: 4.9,
  ),
];
