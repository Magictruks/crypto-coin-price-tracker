import 'package:crypto_market/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../crypto_list_item/cryto_list_item_widget.dart';

class HomeCryptoList extends GetView<HomeController> {
  const HomeCryptoList();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(
        height: 20.0,
      ),
      controller: controller.scrollController,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: controller.tokens.length,
      itemBuilder: (context, index) {
        return HomeCryptoListItem(
          token: controller.tokens[index].label!,
          previousPrice: controller.tokens[index].previousPrice!,
          actualPrice: controller.tokens[index].actualPrice!,
          label: controller.tokens[index].label!,
          fullLabel: controller.tokens[index].fullLabel!,
          rank: controller.tokens[index].rank!,
          description: controller.tokens[index].description!,
        );
      },
    );
  }
}
