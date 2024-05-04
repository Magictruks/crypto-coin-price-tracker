import 'package:crypto_market/app/constant.dart';
import 'package:flutter/cupertino.dart';

class BottomNavItem extends StatelessWidget {
  const BottomNavItem({
    Key? key,
    this.label,
    required this.icon,
    this.iconOpacity = 1.0,
    this.labelColor = kIconColor,
    this.spacing = 5,
  }) : super(key: key);

  final String? label;
  final IconData icon;
  final double iconOpacity;
  final Color labelColor;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: spacing,
      direction: Axis.vertical,
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Opacity(
          opacity: iconOpacity,
          child: Icon(
            icon,
            color: kIconColor,
          ),
        ),
        if (label != null)
          Text(
            label!,
            style: TextStyle(color: labelColor),
          )
      ],
    );
  }
}
