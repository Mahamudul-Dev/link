import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  final Color color, iconColor;
  final IconData icon;
  const RoundedIconButton(
      {required this.color, required this.iconColor, required this.icon})
      : super();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      elevation: 4.0,
      borderRadius: BorderRadius.circular(100),
      child: Padding(
        padding: const EdgeInsets.all(7.5),
        child: Icon(
          icon,
          color: iconColor,
        ),
      ),
    );
  }
}
