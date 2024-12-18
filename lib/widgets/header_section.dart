import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Color(0xFF141C4D).withOpacity(0.4),
            ),
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Get Started',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Let's create your CV",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            _iconButton(Icons.person, 'Profile'),
            _iconButton(Icons.file_copy, 'CV'),
            _iconButton(Icons.document_scanner, 'Digital'),
            _iconButton(Icons.help, 'Help'),
          ],
        ),
      ],
    );
  }

  static Widget _iconButton(IconData icon, String title) {
    return Expanded(
      child: Column(
        children: [
          Icon(icon, color: Colors.white, size: 30),
          const SizedBox(height: 5),
          Text(title, style: const TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
