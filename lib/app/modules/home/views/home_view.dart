import 'package:crypto_market/app/constant.dart';
import 'package:crypto_market/app/data/widgets/bottom_nav_item_widget/bottom_nav_item_widget.dart';
import 'package:crypto_market/app/data/widgets/floating_polygon_button/floating_polygon_button_widget.dart';
import 'package:crypto_market/app/modules/home/widgets/crypto_card/cryto_card_widget.dart';
import 'package:crypto_market/app/modules/home/widgets/title/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constant.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
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
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Stack(
                    children: [
                      NotificationListener(
                        child: ListView.separated(
                          separatorBuilder: (context, index) =>
                          const Divider(
                            height: 20.0,
                          ),
                          controller: controller.scrollController,
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: controller.tokens.length,
                          itemBuilder: (context, index) {
                            return CryptoCard(
                              token: controller.tokens[index].label!,
                              previousPrice: controller.tokens[index]
                                  .previousPrice!,
                              actualPrice: controller.tokens[index]
                                  .actualPrice!,
                              label: controller.tokens[index].label!,
                              fullLabel: controller.tokens[index].fullLabel!,
                              rank: controller.tokens[index].rank!,
                              description: controller.tokens[index]
                                  .description!,
                            );
                          },
                        ),
                        onNotification: (ScrollNotification t) {
                          if (t.metrics.pixels >= t.metrics.maxScrollExtent &&
                              controller.scrollFadingOpacity.value != 0.0) {
                            controller.scrollFadingOpacity.value = 0.0;
                          }
                          if (t.metrics.pixels < t.metrics.maxScrollExtent && controller.scrollFadingOpacity.value != 1.0) {
                            controller.scrollFadingOpacity.value = 1.0;
                          }
                          return false;
                        },
                      ),
                      IgnorePointer(
                        child: AnimatedOpacity(
                          opacity: controller.scrollFadingOpacity.value,
                          duration: const Duration(milliseconds: 500),
                          child: Container(
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [Colors.transparent, kGreyColor],
                                  stops: [0.95, 1],
                                )
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: kBackgroundColor,
          child: Container(
            padding: const EdgeInsets.only(
                left: 16.0, right: 16.0, bottom: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                BottomNavItem(
                  label: 'Home',
                  icon: Icons.home,
                ),
                BottomNavItem(
                  label: 'Privacy',
                  icon: Icons.lock,
                ),
                BottomNavItem(
                  label: 'Buy crypto',
                  icon: Icons.show_chart,
                  iconOpacity: 0,
                  labelColor: kFloatingButtonOrangeColor,
                  spacing: 10,
                ),
                BottomNavItem(
                  label: 'Chart',
                  icon: Icons.show_chart,
                ),
                BottomNavItem(
                  label: 'Settings',
                  icon: Icons.settings,
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: const FloatingPolygonButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      );
    });
  }
}


