import 'package:crypto_market/app/modules/home/widgets/crypto_list_item_bottom_sheet/widgets/stats_widget.dart';
import 'package:crypto_market/app/modules/home/widgets/crypto_list_item_bottom_sheet/widgets/title_widget.dart';
import 'package:flutter/material.dart';

import '../../../../../constant.dart';
import 'button_widget.dart';
import 'description_widget.dart';

class CryptoBottomSheetBody extends StatelessWidget {
  const CryptoBottomSheetBody({
    Key? key,
    required this.topSpace,
    required this.textSpacing,
    required this.fullLabel,
    required this.label,
    required this.description,
    required this.rank,
  }) : super(key: key);

  final double topSpace;
  final double textSpacing;
  final String fullLabel;
  final String label;
  final String description;
  final int rank;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: topSpace),
      padding: const EdgeInsets.only(top: 60, left: 40, right: 40, bottom: 20),
      decoration: const BoxDecoration(
        // color: Colors.red,
        gradient: LinearGradient(
          colors: [kBackgroundColor, kCardBlackLight],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35.0), topRight: Radius.circular(35.0)),
      ),
      child: Column(
        children: [
          Flexible(
            child: CryptoBottomSheetTitle(
              textSpacing: textSpacing,
              fullLabel: fullLabel,
              label: label,
            ),
          ),
          Flexible(
            flex: 2,
            child: Center(
              child: CryptoBottomSheetDescription(description: description),
            ),
          ),
          Flexible(
            child: CryptoCardBottomSheetStats(
                textSpacing: textSpacing, rank: rank),
          ),
          CryptoBottomSheetButton(label: label),
        ],
      ),
    );
  }
}
