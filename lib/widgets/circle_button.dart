import 'package:flutter/material.dart';
import 'package:masterui/constants/color.dart';


class CircleButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback onPressed;

  const CircleButton({Key? key, required this.icon, required this.onPressed}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: kPrimaryLight,
      ) ,
      child: Icon(
        icon,
        color: Colors.white,
      ),

    );
  }
}
