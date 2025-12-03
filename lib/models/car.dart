class Car {
  final String id;
  final String name;
  final String brand;
  final String imagePath;
  final double pricePerDay;
  final double rating;
  final String transmission;
  final String fuelType;

  Car({
    required this.id,
    required this.name,
    required this.brand,
    required this.imagePath,
    required this.pricePerDay,
    required this.rating,
    required this.transmission,
    required this.fuelType,
  });
}

final dummyCars = <Car>[
  Car(
    id: '1',
    name: 'Swift Sedan',
    brand: 'SwiftCar',
    imagePath: 'assets/images/car1.png',
    pricePerDay: 59.99,
    rating: 4.8,
    transmission: 'Automatique',
    fuelType: 'Essence',
  ),
  Car(
    id: '2',
    name: 'Urban Compact',
    brand: 'SwiftCar',
    imagePath: 'assets/images/car2.png',
    pricePerDay: 45.00,
    rating: 4.5,
    transmission: 'Manuelle',
    fuelType: 'Diesel',
  ),
];
