import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarNotificationIcon extends StatelessWidget {
  const AppBarNotificationIcon({
    super.key,
  });

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
        child:const Icon(
          Icons.notifications_none_rounded,
          size: 25,
          color: Colors.black,
        ));
  }
}
