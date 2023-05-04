import 'package:fill_in_the_gap/app/resources/app_colors.dart';
import 'package:fill_in_the_gap/app/resources/app_size.dart';
import 'package:fill_in_the_gap/app/resources/app_text_style.dart';
import 'package:flutter/cupertino.dart';

class APPStickAnswer extends StatelessWidget{

  final String item;

  const APPStickAnswer({super.key, required this.item});


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
          decoration: BoxDecoration(
              color: AppColors.grayItems,
              borderRadius: BorderRadius.circular(AppSize.s02)),
          child: Text(
            item,
            style: AppTextStyles.body1,
          )),
    );
  }

}