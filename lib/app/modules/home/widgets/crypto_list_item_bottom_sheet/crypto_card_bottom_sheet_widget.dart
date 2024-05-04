import 'package:crypto_market/app/constant.dart';
import 'package:crypto_market/app/modules/home/widgets/crypto_list_item_bottom_sheet/widgets/body_widget.dart';
import 'package:crypto_market/app/modules/home/widgets/crypto_list_item_bottom_sheet/widgets/logo_halo_widget.dart';
import 'package:crypto_market/app/modules/home/widgets/crypto_list_item_bottom_sheet/widgets/logo_widget.dart';
import 'package:crypto_market/app/modules/home/widgets/crypto_list_item_bottom_sheet/widgets/top_border_widget.dart';
import 'package:flutter/material.dart';

class CryptoCardBottomSheet extends StatelessWidget {
  const CryptoCardBottomSheet({
    Key? key,
    required this.label,
    required this.fullLabel,
    required this.description,
    required this.rank,
  }) : super(key: key);

  final String label;
  final String fullLabel;
  final String description;
  final int rank;

  @override
  Widget build(BuildContext context) {
    const topSpace = 80.0;
    const textSpacing = 5.0;
    return Stack(
      children: [
        const Positioned(
          top: -200 - topSpace,
          child: CryptoBottomSheetLogoHalo(
            color: kBottomSheetRadient,
          ),
        ),
        const Positioned(
          top: -200 - topSpace,
          child: CryptoBottomSheetLogoHalo(
            color: kBottomSheetRadientOrange,
          ),
        ),
        // Border Color
        const CryptoBottomSheetTopBorder(topSpace: topSpace),
        // Content
        CryptoBottomSheetBody(
          topSpace: topSpace,
          textSpacing: textSpacing,
          fullLabel: fullLabel,
          label: label,
          description: description,
          rank: rank,
        ),
        Positioned.fill(
          top: topSpace - 50,
          child: CryptoBottomSheetLogo(topSpace: topSpace, label: label),
        ),
      ],
    );
  }
}
