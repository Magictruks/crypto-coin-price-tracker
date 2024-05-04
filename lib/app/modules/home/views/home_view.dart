import 'package:crypto_market/app/constant.dart';
import 'package:crypto_market/app/data/widgets/floating_polygon_button/floating_polygon_button_widget.dart';
import 'package:crypto_market/app/modules/home/widgets/bottom_highlight/bottom_highlight.dart';
import 'package:crypto_market/app/modules/home/widgets/bottom_navbar/bottom_navbar_widget.dart';
import 'package:crypto_market/app/modules/home/widgets/crypto_list/crypto_list_widget.dart';
import 'package:crypto_market/app/modules/home/widgets/title/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const HomeTitle(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Stack(
                  children: [
                    NotificationListener(
                      child: HomeCryptoList(
                        items: controller.tokens,
                        scrollController: controller.scrollController,
                      ),
                      onNotification: (ScrollNotification t) {
                        return controller.onListNotification(t);
                      },
                    ),
                    IgnorePointer(
                      child: Obx(() => HomeBottomHighLight(
                            scrollFadingOpacity:
                                controller.scrollFadingOpacity.value,
                          )),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
      floatingActionButton: const FloatingPolygonButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
