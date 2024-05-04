import 'package:crypto_market/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constant.dart';

class HomeBottomHighLight extends StatelessWidget {
  const HomeBottomHighLight({
    Key? key,
    required this.scrollFadingOpacity,
  }) : super(key: key);

  final double scrollFadingOpacity;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: scrollFadingOpacity,
      duration: const Duration(milliseconds: 500),
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.transparent, kGreyColor],
          stops: [0.95, 1],
        )),
      ),
    );
  }
}
