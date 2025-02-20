import 'package:flutter/material.dart';
import 'package:story_teller/src/core/constants/app_constants.dart';

class PagePadding extends StatelessWidget {
  final Widget child;

  const PagePadding({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: AppConstants.kAppHorizontalSpace,
        left: AppConstants.kAppHorizontalSpace,
        bottom: AppConstants.kAppVerticalSpace,
        top: 60,
      ),
      child: child,
    );
  }
}
