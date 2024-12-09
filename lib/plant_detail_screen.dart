import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/gestures.dart';

class PlantDetailScreen extends StatefulWidget {
  const PlantDetailScreen({super.key});

  @override
  _PlantDetailScreenState createState() => _PlantDetailScreenState();
}

class _PlantDetailScreenState extends State<PlantDetailScreen> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image at the top
              Center(
                child: Image.network(
                  'https://cdn11.bigcommerce.com/s-2drwt2az/images/stencil/original/products/5045/41511/apiou3j0u__54598.1592324130.jpg?c=2', // Replace with your image URL
                  width: 350,
                  height: 350,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),

              // Title and Rating stars in a row (1 star only) with reviews text in the same line
              Row(
                children: [
                  const Text(
                    'Ageratum',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  RatingBar.builder(
                    initialRating: 4.8,
                    minRating: 1,
                    itemSize: 20, // Size of the star
                    itemCount: 1, // Showing only one star
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 4, 209, 8),
                    ),
                    onRatingUpdate: (rating) {},
                  ),
                  const SizedBox(
                      width: 10), // Space between star and review text
                  const Text(
                    '4.8 (268 Reviews)', // Showing the rating with review count
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              RichText(
                text: TextSpan(
                  text:
                      'Ageratum is a genus of 40 to 60 tropical and warm temperate flowering annuals and perennials from the family Asteraceae, tribe Eupatorieae. Most species are native to Central America...',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: _isExpanded ? ' Show Less' : ' Read More',
                      style: const TextStyle(
                        fontSize: 10,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          setState(() {
                            _isExpanded = !_isExpanded;
                          });
                        },
                    ),
                  ],
                ),
              ),
              if (_isExpanded)
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    'The genus includes annuals and perennials, often used in gardens for their vibrant colors and attractive flowers.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              const SizedBox(height: 20),

              // Plant details
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildDetailColumn('Size', 'Medium'),
                  _buildDetailColumn('Plant', 'Orchid'),
                  _buildDetailColumn('Height', '12.6"'),
                  _buildDetailColumn('Humidity', '82%'),
                ],
              ),
              const SizedBox(height: 20),

              // Price and Add to Cart button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '\$39.99',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 7, 7, 7),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Add to Cart functionality
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 22, 190, 7),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 15,
                      ),
                      textStyle: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    child: const Text('Add to Cart'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to create the plant detail columns
  Widget _buildDetailColumn(String title, String value) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 14, color: Color.fromARGB(255, 119, 118, 118)),
        ),
        const SizedBox(height: 5),
        Text(
          value,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
