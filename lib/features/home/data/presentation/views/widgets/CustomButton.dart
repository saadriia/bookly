import 'package:bookly_bloc/core/utils/style.dart';
import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  const Custombutton({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    this.borderRadius,
    // ignore: non_constant_identifier_names
    required this.Texty,
  });
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String Texty;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ??
             BorderRadius.circular(16),
          ),
        ),
        child:   Text(
          Texty,
          style: Style.TitleMedium.copyWith(
            color: textColor,
          ),
        ),
      ),
    );
  }
}

