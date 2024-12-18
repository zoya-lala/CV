import 'package:flutter/material.dart';

import 'widgets/header_section.dart';
import 'widgets/resume_section.dart';
import 'widgets/services_section.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image:
                  AssetImage('images/Rect.png'), // Background image for AppBar
              fit: BoxFit.fitWidth, // Ensure it covers the area
            ),
          ),
        ),
        title: Image.asset('images/cvDragon.png'),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20.0,
                ),
                CircleAvatar(),
              ],
            ),
          )
        ],
      ),
      body: Container(
        // padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          image: const DecorationImage(
            image: AssetImage(
              'images/Rect.png',
            ), // Add starry background
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              HeaderSection(), // Top Section
              ResumeSection(), // Resume Templates Section
              ServicesSection(), // Services Section
              // UserHighlights(), // User Highlights Section
              // GuidanceSection(), // Guidance Section
              // Testimonials(), // Testimonials Section
              // FooterSection(), // Footer Section
            ],
          ),
        ),
      ),
    );
  }
}
