import 'package:flutter/material.dart';

class AppBarSearchIcon extends StatelessWidget {
  const AppBarSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: 40,
        margin: EdgeInsets.all(5),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromARGB(139, 168, 166, 166),
          //borderRadius: BorderRadius.circular(30))
        ),
        child: Icon(
          Icons.search,
          size: 25,
          color: Colors.black,
        ));
  }
}
