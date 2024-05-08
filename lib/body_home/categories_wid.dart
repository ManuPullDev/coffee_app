import 'package:flutter/material.dart';

class CategoriesWidgets extends StatelessWidget {
  const CategoriesWidgets({Key? key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _buildImageWithText("assets/images/test/instant-noodles.png", "noodles"),
          _buildImageWithText("assets/images/test/Coffee.png", "Coffee"),
          _buildImageWithText("assets/images/test/hamburger.png", "Burger"),
          _buildImageWithText("assets/images/test/hot-dog.png", "Hot-dog"),
          _buildImageWithText("assets/images/test/pizza.png", "Pizza"),
          _buildImageWithText("assets/images/test/tacos.png", "Tacos"),
          _buildImageWithText("assets/images/test/croissant.png", "Croissant"),
        ],
      ),
    );
  }

  Widget _buildImageWithText(String imagePath, String text) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 201, 199, 199),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            width: 40,
            height: 40,
          ),
          const SizedBox(width: 8), // Add space between image and text
          Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
