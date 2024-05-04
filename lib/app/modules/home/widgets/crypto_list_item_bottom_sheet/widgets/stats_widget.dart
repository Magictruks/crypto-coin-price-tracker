import 'package:crypto_market/app/constant.dart';
import 'package:flutter/material.dart';

class CryptoCardBottomSheetStats extends StatelessWidget {
  const CryptoCardBottomSheetStats({
    Key? key,
    required this.textSpacing,
    required this.rank,
  }) : super(key: key);

  final double textSpacing;
  final int rank;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'RANK',
                style: TextStyle(color: kGreyColor),
              ),
              SizedBox(height: textSpacing),
              Text(
                'TOP #$rank',
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 16.0),
              )
            ],
          ),
        ),
        const VerticalDivider(
          width: 10,
          thickness: 1,
          indent: 30,
          endIndent: 30,
          color: Colors.grey,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'LIVE PRICE',
                style: TextStyle(color: kGreyColor),
              ),
              SizedBox(height: textSpacing),
              const Text(
                '\$ 600.22',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 16.0),
              )
            ],
          ),
        ),
        const VerticalDivider(
          width: 10,
          thickness: 1,
          indent: 30,
          endIndent: 30,
          color: Colors.grey,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'MARKET CAP',
                style: TextStyle(color: kGreyColor),
              ),
              SizedBox(height: textSpacing),
              const Text(
                '\$ 98 B',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 16.0),
              )
            ],
          ),
        ),
      ],
    );
  }
}
