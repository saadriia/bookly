import 'package:flutter/material.dart';

class LoadingIndcator  extends StatelessWidget {
  const LoadingIndcator ({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator(),);
  }
}