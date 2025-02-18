import 'package:flutter/material.dart';

class AppSpacer extends StatelessWidget {
  final double? height;
  final double? width;

  const AppSpacer({super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 0.0,
      width: width ?? 0.0,
    );
  }
}
