class TravelModel {

  String name;
  String image;
  String location;
  String distance;
  String temp;
  String rating;
  String discription;
  String price;
 

TravelModel({

required this.name,
required this.image,
required this.location,
required this.distance,
required this.temp,
required this.rating,
required this.discription,
required this.price,

});


}
List<TravelModel> travelList=[

  TravelModel(name: 'New York',
   image: 'assets/images/new york.jpg',
    location: 'USA-New York',
    distance: '9,850 km',
     temp: '8°C',
      rating: '4.1',
       discription: 'New York City comprises 5 boroughs sitting where the Hudson River meets the Atlantic Ocean. At its core is Manhattan, a densely populated borough that’s among the world’s major commercial, financial and cultural centers. Its iconic sites include skyscrapers such as the Empire State Building and sprawling Central Park. Broadway theater is staged in neon-lit Times Square. ',
        price: '\$7800'),





  TravelModel(name: 'Paris',
   image: 'assets/images/Paris1.jpg',
    location: 'France-Paris',
    distance: '5,670.6 km',
     temp: '6°C',
      rating: '3.5',
       discription: 'Paris is the capital city of France and serves as the center for French politics, economy, culture, and business. It is the fourth largest city in the world and is characterized by its 20 districts. The population density of Paris is significantly higher compared to the surrounding provinces in Greater Paris',
        price: '\$2800'),


  TravelModel(name: 'La Selva',
   image: 'assets/images/La Selva.png',
    location: 'Peru-La Selva',
    distance: '13,862 km',
     temp: ' 12° C',
      rating: '4.6',
       discription: 'La Selva, literally translated the forest, means the Amazon rainforest to Peruvians. This is an enormous part of Peru, covering around a 60% of the country, but not many travellers go there. La Selva is also not really that suitable for overland travel, because there are few roads.',
        price: '\$2750'),


  TravelModel(name: 'Tokyo',
   image: 'assets/images/Tokyo.jpg',
    location: 'Jepan-Tokyo',
    distance: '7,645 km',
     temp: '8°C',
      rating: '4.8',
       discription: 'Tokyo is the administrative, cultural, financial, commercial, and educational centre of Japan and the focus of an extensive urban complex that includes Kawasaki and Yokohama. Attractions include the Imperial Palace, encircled by stone-walled moats and broad gardens, and numerous temples and shrines',
        price: '\$3200'),
];