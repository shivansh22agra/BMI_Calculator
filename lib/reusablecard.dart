import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon.dart';

class Reusable extends StatelessWidget {
  Reusable({
    required this.colour,
    this.UseColumn,
    this.ontap,
  });
  final Color colour;
  final Widget? UseColumn;
  final VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: UseColumn,
        margin: EdgeInsets.all(10),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(10), color: colour),
      ),
    );
  }
}

