import 'package:flutter/material.dart';
import 'plant_detail_screen.dart';  // Import the PlantDetailScreen

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "NANTEZA ANGELLAH",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "REGISTRATION NO. 2023/DCSE/00106/SS",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            // Navigation Button
            ElevatedButton(
              onPressed: () {
                // Navigate to PlantDetailScreen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PlantDetailScreen()),
                );
              },
              child: const Text('Go to Plant Details'),
            ),
          ],
        ),
      ),
    );
  }
}
