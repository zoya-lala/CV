import 'package:flutter/material.dart';

class ResumeSection extends StatelessWidget {
  const ResumeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 50.0,
        ),
        _sectionHeader("Resume Designs"),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _resumeCard("Student\nTemplates"),
            _resumeCard("Professional\nTemplates"),
            _resumeCard("International\nTemplates"),
          ],
        ),
        SizedBox(
          height: 15.0,
        ),
        MaterialButton(
          textColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            side: BorderSide(
              color: Colors.white,
            ),
          ),
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'View More',
            ),
          ),
        ),
        SizedBox(
          height: 50.0,
        ),
      ],
    );
  }

  static Widget _sectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        textAlign: TextAlign.center,
        title,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  static Widget _resumeCard(String title) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color(0xFF141C4D).withOpacity(0.4),
            borderRadius: BorderRadius.circular(8.0),
          ),
          height: 120,
          width: 120,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                textAlign: TextAlign.center,
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Image.asset(
                'images/Fr.png',
              ),
            ],
          ),
        ),
        const SizedBox(height: 5),
      ],
    );
  }
}
