class RestaurantPlace{
  String name;
  String locations;
  String images;
  String detaillocation;
  String times;


 RestaurantPlace({
    required this.name,
    required this.locations,
    required this.images,
    required this.detaillocation,
    required this.times,
 });
}

var restaurantplace = [
  RestaurantPlace(
    images: "assets/images/kafe maji.jpg",
    name: "Kafe Maji Depok",
    locations: "50 meters away",
    detaillocation: "Jalan BBM Raya",
    times: "12.00-22.00"
  ),
  RestaurantPlace(
    images: "assets/images/kafe nako.jpg",
    name: "Kafe Nako Margonda",
    locations: "50 meters away",
    detaillocation: "Jalan Margonda Raya",
    times: "07.00-22.00"
  ),
  RestaurantPlace(
    images: "assets/images/kafe duakopi.jpg",
    name: "Kafe Duakopi",
    locations: "50 meters away",
    detaillocation: "Jalan Juanda Belokan",
    times: "09.00-20.00"
  )
];

