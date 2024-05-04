import 'package:crypto_market/app/constant.dart';
import 'package:flutter/material.dart';

class CryptoBottomSheetDescription extends StatelessWidget {
  const CryptoBottomSheetDescription({
    Key? key,
    required this.description,
  }) : super(key: key);

  final String description;

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: kGreyColor,
      ),
    );
  }
}
