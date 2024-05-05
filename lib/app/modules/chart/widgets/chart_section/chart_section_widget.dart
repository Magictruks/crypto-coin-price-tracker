import 'package:crypto_market/app/constant.dart';
import 'package:crypto_market/app/data/widgets/crypto_svg/crypto_svg_widget.dart';
import 'package:crypto_market/app/modules/chart/widgets/chart_section/widgets/chart/chart_widget.dart';
import 'package:flutter/material.dart';

class CryptoDetailsChartSection extends StatelessWidget {
  const CryptoDetailsChartSection({
    Key? key,
    required this.token,
  }) : super(key: key);

  final String token;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: CrytoSvg(
            token: token,
            size: 100,
          ),
        ),
        Expanded(
          child: RichText(
            text: const TextSpan(children: [
              TextSpan(
                text: '\$',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
              TextSpan(
                text: '10,000',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 36.0,
                ),
              ),
              TextSpan(
                text: '.00',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: kGreyColor,
                ),
              )
            ]),
          ),
        ),
        const Expanded(
          child: Chip(
            label: Text(
              '+2.5% (24h)',
              style: TextStyle(
                color: kChipTextGreen,
                fontWeight: FontWeight.bold,
              ),
            ),
            avatar: Icon(
              Icons.arrow_drop_up,
              color: kChipTextGreen,
            ),
            backgroundColor: kChipBackgroundGreen,
          ),
        ),
        const CryptoDetailsChart(),
      ],
    );
  }
}
