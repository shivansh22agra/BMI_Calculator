import 'package:bmi_calculator/const.dart';
import 'package:flutter/material.dart';

class UseColumn extends StatelessWidget {
  UseColumn(this.icon, this.label);
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 40,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          label,
          style: klabelStyle,
        )
      ],
    );
  }
}
