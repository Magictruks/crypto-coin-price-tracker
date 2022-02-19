import 'package:crypto_market/app/constant.dart';
import 'package:crypto_market/app/data/widgets/crypto_svg/crypto_svg_widget.dart';
import 'package:crypto_market/app/modules/chart/views/chart_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:indexed/indexed.dart';

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
    return Indexer(
      children: [
        // Border Color
        Container(
          margin: const EdgeInsets.only(top: topSpace - 3),
          decoration: const BoxDecoration(
            color: Colors.blue,
            gradient: LinearGradient(
              colors: [kOrangeColor, kPurpleColor],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
          ),
        ),
        // Content
        Indexed(
          index: 1000,
          child: Container(
            margin: const EdgeInsets.only(top: topSpace),
            padding:
                const EdgeInsets.only(top: 60, left: 40, right: 40, bottom: 20),
            decoration: const BoxDecoration(
              // color: Colors.red,
              gradient: LinearGradient(
                colors: [kBackgroundColor, kCardBlackLight],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(35.0), topRight: Radius.circular(35.0)),
            ),
            child: Column(
              children: [
                Expanded(
                  child: Wrap(
                    direction: Axis.vertical,
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: textSpacing,
                    children: [
                      Text(
                        fullLabel,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      Text(
                        label.toUpperCase(),
                        style: const TextStyle(
                          color: kGreyColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      description,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: kGreyColor,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: CryptoCardBottomSheetStats(textSpacing: textSpacing, rank: rank),
                ),
                Indexed(
                  index: 10000,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        width: double.infinity,
                        child: const Text(
                          "PRICE HISTORY",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35),
                        ),
                        primary: Colors.white,
                        elevation: 0,
                      ),
                      onPressed: () {
                        Get.to(() => ChartView(token: label,));
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Indexed(
          index: 100000,
          child: Positioned.fill(
            top: topSpace - 50,
            child: Align(
              alignment: Alignment.topCenter,
              child: CrytoSvg(
                token: label,
                size: 100.0,
              ),
            ),
          ),
        ),
        Positioned(
          top: -200 - topSpace,
          child: Container(
            height: Get.height,
            width: Get.width,
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                colors: [kBottomSheetRadient, Colors.transparent],
                center: Alignment.center,
                radius: 0.6,
              ),
              borderRadius: BorderRadius.all(Radius.circular(180.0)),
            ),
          ),
        ),
      ],
    );
  }
}

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
