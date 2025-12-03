import 'package:flutter/material.dart';
import '../models/car.dart';
import 'booking_screen.dart';

class CarDetailsScreen extends StatelessWidget {
  final Car car;

  const CarDetailsScreen({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(car.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // ==========================
            //     CARTE DE LA VOITURE
            // ==========================
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // IMAGE CENTRÉE
                  Center(
                    child: Image.asset(
                      car.imagePath,
                      height: 150,
                      fit: BoxFit.contain,
                    ),
                  ),

                  const SizedBox(height: 12),

                  // NOM
                  Text(
                    car.name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 4),

                  // CATÉGORIE
                  Text(
                    "Catégorie : ${car.brand}",
                    style: const TextStyle(fontSize: 15),
                  ),

                  // CARBURANT
                  Text(
                    "Carburant : ${car.fuelType}",
                    style: const TextStyle(fontSize: 15),
                  ),

                  // TRANSMISSION
                  Text(
                    "Transmission : ${car.transmission}",
                    style: const TextStyle(fontSize: 15),
                  ),

                  // PLACES
                  Text(
                    "Nombre de places : 5",
                    style: const TextStyle(fontSize: 15),
                  ),

                  const SizedBox(height: 10),

                  // PRIX
                  Text(
                    "Prix : ${car.pricePerDay.toStringAsFixed(2)} \$ / jour",
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  // ==========================
                  //  BOUTON RÉSERVER FULL WIDTH
                  // ==========================
                  SizedBox(
                    width: double.infinity, // full width
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => BookingScreen(car: car),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Réserver maintenant",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 6),
                          Icon(Icons.arrow_right_alt,
                              color: Colors.white, size: 22),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const Spacer(),

            // ==========================
            //   BOUTON RETOUR BLEU
            // ==========================
            SizedBox(
              width: 260,
              height: 50,
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_back, color: Colors.white),
                    SizedBox(width: 8),
                    Text(
                      "Retour à la recherche",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
