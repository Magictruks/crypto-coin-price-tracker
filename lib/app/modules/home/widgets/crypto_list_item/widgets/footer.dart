import 'package:crypto_market/app/constant.dart';
import 'package:flutter/cupertino.dart';

class CryptoListItemFooter extends StatelessWidget {
  const CryptoListItemFooter({
    Key? key,
    required this.previousPrice,
    required this.actualPrice,
  }) : super(key: key);

  final double previousPrice;
  final double actualPrice;

  Color priceColor(previousPrice, actualPrice) {
    return previousPrice <= actualPrice ? kGreenColor : kRedColor;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
      crossAxisAlignment: WrapCrossAlignment.end,
      spacing: 8,
      children: [
        Text(
          '4,132.06',
          style: TextStyle(
            color: priceColor(previousPrice, actualPrice),
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          '\$56.336.27',
          style: TextStyle(
            color: kGreyColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
