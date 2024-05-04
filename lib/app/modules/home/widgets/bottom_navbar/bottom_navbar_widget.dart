import 'package:flutter/material.dart';

import '../../../../constant.dart';
import '../../../../data/widgets/bottom_nav_item_widget/bottom_nav_item_widget.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar();

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: kBackgroundColor,
      child: Container(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget>[
            BottomNavItem(
              label: '',
              icon: Icons.home,
            ),
            BottomNavItem(
              label: '',
              icon: Icons.lock,
            ),
            BottomNavItem(
              label: '',
              icon: Icons.show_chart,
              iconOpacity: 0,
              labelColor: kFloatingButtonOrangeColor,
              spacing: 10,
            ),
            BottomNavItem(
              label: '',
              icon: Icons.show_chart,
            ),
            BottomNavItem(
              label: '',
              icon: Icons.settings,
            ),
          ],
        ),
      ),
    );
  }
}
