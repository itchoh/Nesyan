import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../data/model/nav_item.dart';
import '../constant/colors.dart';
import '../constant/icon_style.dart';
import '../constant/icons.dart';

class HomeNavigation extends StatelessWidget {
   HomeNavigation({
    super.key,
    required this.currentIndex,
    required this.onChanged,
  });

  final int currentIndex;
  final ValueChanged<int> onChanged;

  final List<NavItem> items = [
    NavItem(AppIcons.home, "Home"),
    NavItem(AppIcons.reminder, "Schedule"),
    NavItem(AppIcons.game, "Game"),
    NavItem(AppIcons.alert, "Alerts"),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 75.h,
      color: white,
      elevation: 8,
      child: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              items.length,
                  (index) => _navItem(items[index], index),
            ),
          ),
        ),
      ),
    );
  }
  Widget _navItem(NavItem item, int index) {
    final bool selected = currentIndex == index;
    return InkWell(
      borderRadius: BorderRadius.circular(20.r),
      onTap: () => onChanged(index),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: EdgeInsets.symmetric(
          horizontal: selected ? 14.w : 8.w,
          vertical: 8.h,
        ),
        decoration: BoxDecoration(
          color: selected
              ? grannyApple
              : Colors.transparent,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppIconStyle.small(
              item.icon,
              color: selected ? traditionalGreen : classicMatteGrey,
            ),
            if (selected) ...[
              SizedBox(width: 6.w),
              Text(
                item.label,
                style: TextStyle(
                  color: traditionalGreen,
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
