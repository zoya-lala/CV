import 'package:carousel_slider/carousel_slider.dart';
import 'package:cv_dragon_app/widgets/footer_section.dart';
import 'package:cv_dragon_app/widgets/guidance_section.dart';
import 'package:cv_dragon_app/widgets/testimonials.dart';
import 'package:cv_dragon_app/widgets/user_highlights.dart';
import 'package:flutter/material.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Services",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "View more",
                    style: TextStyle(
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),

          // Carousel Slider
          CarouselSlider(
            options: CarouselOptions(
              height: 350,
              viewportFraction: 0.60,
            ),
            items: [
              _serviceCard(
                context,
                "Lifetime access",
                "Rs 1999",
                "Buy our 10 years PRO subscription and get access to all our Premium + Pro designs and Features.",
                "78.4k",
                "service_image1.png",
              ),
              _serviceCard(
                context,
                "Pro Subscription",
                "Rs 499",
                "Buy our 1 year PRO subscription and access all Premium designs and Features.",
                "78.4k",
                "service_image2.png",
              ),
            ],
          ),
          UserHighlights(),
          GuidanceSection(),
          Testimonials(),
          FooterSection(),
        ],
      ),
    );
  }

  // Service Card UI
  Widget _serviceCard(
    BuildContext context, // Pass BuildContext explicitly
    String title,
    String price,
    String description,
    String likes,
    String imagePath,
  ) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: Stack(
          children: [
            // Image Background
            Image.asset(
              'images/Car.png', // Replace with your image path
              fit: BoxFit.cover,
              height: 350,
              width: double.infinity,
            ),

            // Content Overlay
            Positioned(
              bottom: 0,
              child: Container(
                width:
                    MediaQuery.of(context).size.width * 0.55, // Dynamic width
                // color:
                //     Colors.black.withOpacity(0.6), // Semi-transparent overlay
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      softWrap: true,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      price,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      softWrap: true,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      description,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.visible,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(Icons.favorite, color: Colors.red, size: 18),
                        const SizedBox(width: 5),
                        Text(
                          likes,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
