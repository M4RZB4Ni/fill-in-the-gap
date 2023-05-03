import 'package:fill_in_the_gap/app/resources/app_text_style.dart';
import 'package:flutter/material.dart';

class APPQuestionBody extends StatefulWidget{
  const APPQuestionBody({super.key});

  @override
  State<StatefulWidget> createState() {
    return APPQuestionBodyState();
  }

}

class APPQuestionBodyState extends State<APPQuestionBody>
{
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text('ماهي اللغة التي سوف نستخدمها لبرمجة أساس المشروع؟',style: AppTextStyles.paragraph,)
    ],);
  }
}