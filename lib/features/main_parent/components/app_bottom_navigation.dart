import 'package:fill_in_the_gap/app/messages/app_messages.dart';
import 'package:fill_in_the_gap/app/resources/app_colors.dart';
import 'package:fill_in_the_gap/app/resources/app_icons.dart';
import 'package:fill_in_the_gap/app/resources/app_size.dart';
import 'package:fill_in_the_gap/data/enumerations/enums.dart';
import 'package:fill_in_the_gap/features/main_parent/components/app_bottom_navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class APPBottomNavigation extends StatefulWidget {
  const APPBottomNavigation({
    final Key? key,
    required this.onTapItem,
  }) : super(key: key);

  /// index ot button
  final ValueChanged<MainParentType> onTapItem;

  @override
  APPBottomNavigationState createState() => APPBottomNavigationState();
}

class APPBottomNavigationState extends State<APPBottomNavigation> {
  int selected = 1;

  @override
  Widget build(final BuildContext context) {
    return Container(
      color: AppColors.pureWhite,
      height: AppSize.s75.r,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            child: APPBottomNavigationItem(
              index: 4,
              selected: selected,
              label: AppMessage.safhati,
              icon: AppIcons.ASSET_PROFILE,
            ),
            onTap: () {
              selected = 4;
              widget.onTapItem(MainParentType.SAFHATI);
              setState(() {});
            },
          ),
          InkWell(
            child: APPBottomNavigationItem(
              index: 3,
              selected: selected,
              label: AppMessage.almantadi,
              icon: AppIcons.ASSET_MESSAGE,
            ),
            onTap: () {
              selected = 3;
              setState(() {});
              widget.onTapItem(MainParentType.ALMANTADY);
            },
          ),
          InkWell(
            child: APPBottomNavigationItem(
              index: 1,
              selected: selected,
              label: AppMessage.rahlatak,
              icon: AppIcons.ASSET_CUP,
            ),
            onTap: () {
              selected = 1;
              widget.onTapItem(MainParentType.RAHLATAK);
              setState(() {});
            },
          ),
          InkWell(
            child: APPBottomNavigationItem(
              index: 0,
              selected: selected,
              label: AppMessage.aldoros,
              icon: AppIcons.ASSET_TEACHER,
            ),
            onTap: () {
              selected = 0;
              widget.onTapItem(MainParentType.ALDOROS);
              setState(() {});
            },
          ),





        ],
      ),
    );
  }
}
