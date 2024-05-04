import 'package:crypto_market/app/constant.dart';
import 'package:crypto_market/app/data/widgets/crypto_svg/crypto_svg_widget.dart';
import 'package:crypto_market/app/modules/home/widgets/crypto_list_item/widgets/body.dart';
import 'package:crypto_market/app/modules/home/widgets/crypto_list_item/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../crypto_list_item_bottom_sheet/crypto_card_bottom_sheet_widget.dart';

class HomeCryptoListItem extends StatelessWidget {
  const HomeCryptoListItem({
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

  Color gradientColor(previousPrice, actualPrice) {
    return previousPrice <= actualPrice ? kCardGradientGreen : kCardGradientRed;
  }

  Future<dynamic> buildHomeBottomSheet(String label, String fullLabel,
      String description, double actualPrice, int rank) {
    return Get.bottomSheet(
      CryptoCardBottomSheet(
        label: label,
        fullLabel: fullLabel,
        description: description,
        rank: rank,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(35),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kBlackLight,
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      child: GestureDetector(
        onTap: () {
          buildHomeBottomSheet(
            label,
            fullLabel,
            description,
            actualPrice,
            rank,
          );
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
          width: double.infinity,
          decoration: buildBoxDecoration(),
          child: Row(
            children: [
              Expanded(
                child: CrytoSvg(
                  token: token,
                ),
              ),
              Expanded(
                flex: 2,
                child: CryptoListItemBody(token: token),
              ),
              Expanded(
                child: CryptoListItemFooter(
                  previousPrice: previousPrice,
                  actualPrice: actualPrice,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration buildBoxDecoration() {
    return BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Colors.transparent,
          gradientColor(previousPrice, actualPrice),
        ],
        stops: const [0.4, 1],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      ),
      borderRadius: const BorderRadius.all(
        Radius.circular(8.0),
      ),
    );
  }
}
