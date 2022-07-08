import 'package:flutter/material.dart';

class RideItems extends StatelessWidget {
  final String text;
  final IconData icon;
  const RideItems({Key? key, required this.text, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 100,
          child: Icon(
            icon,
            size: 60,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color: Color.fromARGB(255, 211, 208, 208),
          ),
        ),
        SizedBox(height: 16),
        Text(
          '$text',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
