import 'package:bookly_bloc/core/utils/style.dart';
import 'package:flutter/material.dart';






class CustomErrors extends StatelessWidget {
  const CustomErrors({super.key, required this.errMessage});
   final String errMessage;
  @override
  Widget build(BuildContext context) {
    return   Text(errMessage ,style: Style.textStyle18);
  }
}
