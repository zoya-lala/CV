import 'package:flutter/material.dart';

class Testimonials extends StatelessWidget {
  const Testimonials({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50.0,
          ),
          const Text(
            "Testimonials",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 10),
          _testimonialCard("Karthik Puvada",
              "Eget tempus blandit in vitae. Ultrices id congue lacus nibh."),
          const SizedBox(height: 50),
        ],
      ),
    );
  }

  Widget _testimonialCard(String name, String testimonial) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            const CircleAvatar(
              radius: 30,
              backgroundColor: Colors.blueAccent,
              child: Icon(Icons.person, color: Colors.white, size: 30),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    testimonial,
                    style: const TextStyle(color: Colors.black54),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: List.generate(
                      5,
                      (index) =>
                          const Icon(Icons.star, color: Colors.amber, size: 16),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
