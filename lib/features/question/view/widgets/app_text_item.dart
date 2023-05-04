import 'package:fill_in_the_gap/app/resources/app_spacing.dart';
import 'package:fill_in_the_gap/app/resources/app_text_style.dart';
import 'package:flutter/cupertino.dart';

class APPTextItem extends StatelessWidget{
  const APPTextItem({super.key, required this.element});

  final String element;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSpacing.s01All,
      child: Text(
        element,
        style: AppTextStyles.body1,
      ),
    );
  }


}