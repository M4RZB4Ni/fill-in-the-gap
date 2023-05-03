import 'package:fill_in_the_gap/app/resources/app_colors.dart';
import 'package:fill_in_the_gap/app/resources/app_spacing.dart';
import 'package:flutter/material.dart';

class APPCircleButton extends StatelessWidget{
  const APPCircleButton({super.key, this.onTab, this.backgroundColor=AppColors.primaryLight, this.foregroundColor=AppColors.pink, required this.child});

  ///onTab as Function
  final Function()? onTab;

  ///Background Color as Color
  final Color backgroundColor;

  ///Foreground Color as Color
  final Color foregroundColor;

  ///Child of Button as Widget
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:() => onTab,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: AppSpacing.s20All,
        backgroundColor: backgroundColor, // <-- Button color
        foregroundColor: foregroundColor, // <-- Splash color
      ),
      child: child,
    );
  }

}