import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              'The Go-To CV App for Students',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
              softWrap: true,
              overflow: TextOverflow.visible,
            ),
          ),
          Icon(
            Icons.favorite,
            color: Colors.red,
            size: 30.0,
          ),
        ],
      ),
    );
  }
}
