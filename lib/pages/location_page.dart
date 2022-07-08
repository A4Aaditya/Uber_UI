import 'package:flutter/material.dart';

class LocationPages extends StatelessWidget {
  final IconData icon;
  final String text;
  const LocationPages({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: ListTile(
        onTap: () {},
        leading: CircleAvatar(
          backgroundColor: Color.fromARGB(255, 217, 217, 217),
          radius: 26,
          child: Icon(
            icon,
            color: Colors.black,
          ),
        ),
        title: Text(
          '$text',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: Colors.black,
        ),
      ),
    );
  }
}
