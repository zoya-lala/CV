import 'package:flutter/material.dart';

class UserHighlights extends StatelessWidget {
  const UserHighlights({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 50.0,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 12.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'User Highlights',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            Text(
              'View More',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
          ],
        ),
      ),
      Card(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        color: Color(0xffFFD0C9),
        child: Padding(
          padding: EdgeInsets.all(60.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Start in 2h : 29m : 20s",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(
                        0xff1F3D48,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Special Discount",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color(
                        0xffFF6F58,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Every subscription*",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(
                        0xff1F3D48,
                      ),
                    ),
                  ),
                ],
              ),
              Image.asset(
                'images/Group.png',
                fit: BoxFit.cover,
                // height: 200,
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
