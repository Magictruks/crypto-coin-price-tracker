import 'package:crypto_market/app/constant.dart';
import 'package:crypto_market/app/data/widgets/crypto_svg/crypto_svg_widget.dart';
import 'package:crypto_market/app/modules/home/widgets/crypto_card/crypto_card_bottom_sheet_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class CryptoCardController extends GetxController {


  Color gradientColor(previousPrice, actualPrice) {
    return previousPrice <= actualPrice
        ? kCardGradientGreen
        : kCardGradientRed;
  }

  Color priceColor(previousPrice, actualPrice) {
    return previousPrice <= actualPrice
        ? kGreenColor
        : kRedColor;
  }

  Future<dynamic> buildHomeBottomSheet(String label, String fullLabel, String description, double actualPrice, int rank) {
    return Get.bottomSheet(
      CryptoCardBottomSheet(label: label, fullLabel: fullLabel, description: description, rank: rank),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(35),
        // side: BorderSide(width: 0, color: Colors.blue),
      ),
      // backgroundColor: Colors.green,
    );
  }

}