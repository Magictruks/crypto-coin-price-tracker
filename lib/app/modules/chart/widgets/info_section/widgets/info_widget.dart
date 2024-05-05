import 'package:crypto_market/app/constant.dart';
import 'package:flutter/material.dart';

class CryptoDetailsInfo extends StatelessWidget {
  const CryptoDetailsInfo({
    Key? key,
    required this.title,
    required this.price,
    required this.percent,
    required this.isBullish,
  }) : super(key: key);

  final String title;
  final String price;
  final String percent;
  final bool isBullish;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(color: kGreyColor),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              price,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              isBullish ? Icons.arrow_drop_up : Icons.arrow_drop_down,
              color: isBullish ? kGreenColor : kRedColor,
            ),
            Text(
              '$percent%',
              style: TextStyle(
                  color: isBullish ? kGreenColor : kRedColor,
                  fontWeight: FontWeight.bold),
            ),
          ],
        )
      ],
    );
  }
}
