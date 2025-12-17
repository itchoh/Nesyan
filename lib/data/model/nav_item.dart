import 'package:nesyan/core/constant/icon_style.dart';

class NavItem {
  final String icon;
  final String label;

   NavItem(this.icon, this.label){
    AppIconStyle.medium(icon);
  }
}