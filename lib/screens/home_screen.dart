import 'package:flutter/material.dart';
import '../models/car.dart';
import 'car_details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Car> cars = [
      Car(
        id: "1",
        name: "AUDI Q3",
        brand: "SUV Compact",
        pricePerDay: 79.0,
        rating: 4.8,
        fuelType: "Essence",
        transmission: "Auto",
        imagePath: "assets/images/cars/audi_q3.png",
      ),
      Car(
        id: "2",
        name: "Tesla 3",
        brand: "Berline Électrique",
        pricePerDay: 95.0,
        rating: 4.9,
        fuelType: "Électrique",
        transmission: "Auto",
        imagePath: "assets/images/cars/tesla3.png",
      ),
      Car(
        id: "3",
        name: "Yaris LE",
        brand: "Économique",
        pricePerDay: 49.99,
        rating: 4.4,
        fuelType: "Essence",
        transmission: "Auto",
        imagePath: "assets/images/cars/yaris.png",
      ),
      Car(
        id: "4",
        name: "Hyundai Tucson",
        brand: "SUV Compact",
        pricePerDay: 69.99,
        rating: 4.5,
        fuelType: "Essence",
        transmission: "Auto",
        imagePath: "assets/images/cars/tucson.png",
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Nos Voitures"),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: cars.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.78,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              itemBuilder: (context, index) {
                final car = cars[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => CarDetailsScreen(car: car),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey.shade300),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 10),
                        Expanded(
                          child: Image.asset(
                            car.imagePath,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          car.name,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Text(
                          car.brand,
                          style: TextStyle(
                              fontSize: 13, color: Colors.grey.shade600),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          "${car.pricePerDay.toStringAsFixed(2)} \$ / jour",
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                        const SizedBox(height: 6),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => CarDetailsScreen(car: car),
                              ),
                            );
                          },
                          child: const Text(
                            "Voir Détails →",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.blue,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          // Voir Plus
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: InkWell(
              onTap: () {},
              child: const Text(
                "Voir Plus →",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
          ),

          // Bouton Accueil
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: SizedBox(
              width: 200,
              height: 55,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                child: const Text(
                  "Accueil",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
