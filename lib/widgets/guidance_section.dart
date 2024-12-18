import 'package:flutter/material.dart';

class GuidanceSection extends StatelessWidget {
  const GuidanceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50.0,
        ),
        Container(
          width: double.infinity,
          color: const Color(0xFFFCE4EC), // Light pink background
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _sectionHeader(context), // Top Section
              const SizedBox(height: 10),
              _videoyoudsGrid(), // Video youds
              const SizedBox(height: 30),
              _exploreMoreButton(), // Explore More Button
            ],
          ),
        ),
      ],
    );
  }

  // Section Header: Guidance title and categories
  Widget _sectionHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Guidance",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          GestureDetector(
            onTap: () {},
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
    );
  }

  // Video Categories: Tutorials, Articles, FAQ, Tips
  Widget _videoCategories() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _categoryButton("Tutorials", true), // Highlighted
          _categoryButton("Articles", false),
          _categoryButton("FAQ", false),
          _categoryButton("Tips", false),
        ],
      ),
    );
  }

  Widget _categoryButton(String title, bool isSelected) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Colors.purple : Colors.transparent,
        border: Border.all(
            color: isSelected ? Colors.transparent : Colors.grey.shade400),
        borderRadius: BorderRadius.circular(12), // Slightly rounded corners
      ),
      child: Text(
        title,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black87,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  // Video youds Grid
  Widget _videoyoudsGrid() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _videoCategories(),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              _videoRow([
                "images/you.png",
                "images/you.png",
              ]),
              const SizedBox(height: 10),
              _videoRow([
                "images/you.png",
                "images/you.png",
              ]),
            ],
          ),
        ),
      ],
    );
  }

  Widget _videoRow(List<String> imagePaths) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: imagePaths
          .map(
            (path) => Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Stack(
                    children: [
                      Image.asset(
                        path,
                        // height: 120,
                        fit: BoxFit.cover,
                      ),
                      const Positioned(
                        top: 0,
                        right: 0,
                        left: 0,
                        bottom: 0,
                        child: Center(
                          child: Icon(
                            Icons.play_circle_fill,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }

  // Explore More Button (with outlined border and rounded shape)
  Widget _exploreMoreButton() {
    return Center(
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Colors.purple), // Border color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // Rounded corners
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        ),
        onPressed: () {},
        child: const Text(
          "Explore more",
          style: TextStyle(
            color: Colors.purple, // Text color to match border
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
