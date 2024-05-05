import 'package:crypto_market/app/modules/chart/widgets/chart_background/chart_background_widget.dart';
import 'package:crypto_market/app/modules/chart/widgets/chart_section/chart_section_widget.dart';
import 'package:crypto_market/app/modules/chart/widgets/info_section/info_section_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/chart_controller.dart';

class ChartView extends GetView<ChartController> {
  const ChartView({Key? key, required this.token}) : super(key: key);

  final String token;

  @override
  Widget build(BuildContext context) {
    return ChartBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: CryptoDetailsChartSection(token: token),
              ),
              const CryptoDetailsInfoSection()
            ],
          ),
        ),
        // bottomNavigationBar: const BottomAppBar(
        //   color: kBackgroundColor,
        // ),
      ),
    );
  }
}
