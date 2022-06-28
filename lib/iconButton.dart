import 'package:flutter/material.dart';

class iconButton extends StatelessWidget {
  iconButton({required this.icon, required this.onpress});
  final IconData icon;
  final VoidCallback onpress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      fillColor: Colors.grey,
      onPressed: onpress,
      shape: CircleBorder(),
      elevation: 6,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}
