import 'package:flutter/material.dart';

class RoundIcon extends StatelessWidget {
  final Widget child;
  final double radius;
  final double borderWidth;
  final Color borderColor;
  final Color bgColor;

  const RoundIcon({
    super.key,
    required this.child,
    this.radius = 12,
    this.borderWidth = 1,
    this.borderColor = Colors.transparent,
    this.bgColor = Colors.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 2 * (radius + borderWidth),
      height: 2 * (radius + borderWidth),
      decoration: BoxDecoration(
        color: bgColor,
        shape: BoxShape.circle,
        border: borderWidth == 0
            ? null
            : Border.all(
                color: borderColor,
                width: borderWidth,
              ),
      ),
      child: Center(
        child: ClipOval(
          child: child,
        ),
      ),
    );
  }
}
