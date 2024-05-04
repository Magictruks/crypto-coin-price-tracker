import 'package:crypto_market/app/constant.dart';
import 'package:flutter/material.dart';

class CryptoListItemBody extends StatelessWidget {
  const CryptoListItemBody({
    Key? key,
    required this.token,
  }) : super(key: key);

  final String token;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
      spacing: 8,
      children: [
        Row(
          children: [
            Text(
              token.toUpperCase(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              '/USDT',
              style: TextStyle(
                color: kGreyColor,
                fontSize: 10.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const Text(
          'Vol. 3.333.33 M',
          style: TextStyle(
            color: kGreyColor,
            fontSize: 12.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
