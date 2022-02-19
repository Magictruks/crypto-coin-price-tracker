import 'package:crypto_market/app/constant.dart';
import 'package:crypto_market/app/data/widgets/crypto_svg/crypto_svg_widget.dart';
import 'package:crypto_market/app/modules/home/widgets/crypto_card/crypto_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CryptoCard extends GetView<CryptoCardController> {
  const CryptoCard({
    Key? key,
    required this.token,
    required this.previousPrice,
    required this.actualPrice,
    required this.label,
    required this.fullLabel,
    required this.rank,
    required this.description,
  }) : super(key: key);

  final String token;
  final double previousPrice;
  final double actualPrice;
  final String label;
  final String fullLabel;
  final int rank;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kBlackLight,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      child: GestureDetector(
        onTap: () {
          controller.buildHomeBottomSheet(
              label, fullLabel, description, actualPrice, rank);
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.transparent,
                controller.gradientColor(previousPrice, actualPrice),
              ],
              stops: const [0.4, 1],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(8.0),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: CrytoSvg(
                  token: token,
                ),
              ),
              Expanded(
                flex: 2,
                child: CryptoCardMiddleContent(token: token),
              ),
              Expanded(
                flex: 1,
                child: CryptoCardEndContent(
                    controller: controller,
                    previousPrice: previousPrice,
                    actualPrice: actualPrice),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CryptoCardEndContent extends StatelessWidget {
  const CryptoCardEndContent({
    Key? key,
    required this.controller,
    required this.previousPrice,
    required this.actualPrice,
  }) : super(key: key);

  final CryptoCardController controller;
  final double previousPrice;
  final double actualPrice;

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
            color: controller.priceColor(previousPrice, actualPrice),
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

class CryptoCardMiddleContent extends StatelessWidget {
  const CryptoCardMiddleContent({
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
