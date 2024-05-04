import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CryptoBottomSheetLogoHalo extends StatelessWidget {
  const CryptoBottomSheetLogoHalo({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: [color, Colors.transparent],
          center: Alignment.center,
          radius: 0.5,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(180.0),
        ),
      ),
    );
  }
}
