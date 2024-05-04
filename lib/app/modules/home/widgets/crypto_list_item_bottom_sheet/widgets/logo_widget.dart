import 'package:crypto_market/app/data/widgets/crypto_svg/crypto_svg_widget.dart';
import 'package:flutter/material.dart';

class CryptoBottomSheetLogo extends StatelessWidget {
  const CryptoBottomSheetLogo({
    Key? key,
    required this.topSpace,
    required this.label,
  }) : super(key: key);

  final double topSpace;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: CrytoSvg(
        token: label,
        size: 100.0,
      ),
    );
  }
}
