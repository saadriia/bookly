import 'package:bookly_bloc/core/assets.dart';
import 'package:bookly_bloc/features/home/data/presentation/views/widgets/CustomAppBar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   const Column(
      children:  [
CustomAppBar()
      ],
    );
  }
}
