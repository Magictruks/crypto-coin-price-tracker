import 'package:crypto_market/app/constant.dart';
import 'package:flutter/material.dart';

class CryptoBottomSheetTopBorder extends StatelessWidget {
  const CryptoBottomSheetTopBorder({
    Key? key,
    required this.topSpace,
  }) : super(key: key);

  final double topSpace;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: topSpace - 3),
      decoration: const BoxDecoration(
        color: Colors.blue,
        gradient: LinearGradient(
          colors: [kOrangeColor, kPurpleColor],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
      ),
    );
  }
}
