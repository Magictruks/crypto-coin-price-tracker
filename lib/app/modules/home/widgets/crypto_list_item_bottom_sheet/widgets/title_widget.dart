import 'package:crypto_market/app/constant.dart';
import 'package:flutter/material.dart';

class CryptoBottomSheetTitle extends StatelessWidget {
  const CryptoBottomSheetTitle({
    Key? key,
    required this.textSpacing,
    required this.fullLabel,
    required this.label,
  }) : super(key: key);

  final double textSpacing;
  final String fullLabel;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: textSpacing,
      children: [
        Text(
          fullLabel,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        Text(
          label.toUpperCase(),
          style: const TextStyle(
            color: kGreyColor,
            fontWeight: FontWeight.w500,
            fontSize: 16.0,
          ),
        ),
      ],
    );
  }
}
