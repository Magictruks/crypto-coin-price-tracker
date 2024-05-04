import 'package:crypto_market/app/modules/chart/views/chart_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CryptoBottomSheetButton extends StatelessWidget {
  const CryptoBottomSheetButton({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16.0),
      child: ElevatedButton(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          width: double.infinity,
          child: const Text(
            "PRICE HISTORY",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
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
          Get.to(() => ChartView(
                token: label,
              ));
        },
      ),
    );
  }
}
