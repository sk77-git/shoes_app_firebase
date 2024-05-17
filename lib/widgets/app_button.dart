import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {super.key,
      this.label,
      this.labelTextStyle,
      this.borderRadius,
      this.onPressed});

  final String? label;
  final TextStyle? labelTextStyle;
  final double? borderRadius;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(borderRadius ?? 10),
      color: Colors.black,
      child: InkWell(
        borderRadius: BorderRadius.circular(borderRadius ?? 10),
        onTap: onPressed,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
          child: Text(
            label ?? "",
            style: labelTextStyle,
          ),
        ),
      ),
    );
  }
}
