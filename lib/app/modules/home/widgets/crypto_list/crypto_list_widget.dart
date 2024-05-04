import 'package:crypto_market/app/data/models/fake_token/fake_token_model_model.dart';
import 'package:flutter/material.dart';

import '../crypto_list_item/cryto_list_item_widget.dart';

class HomeCryptoList extends StatelessWidget {
  const HomeCryptoList({
    Key? key,
    required this.items,
    required this.scrollController,
  }) : super(key: key);

  final List<FakeTokenModel> items;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(
        height: 20.0,
      ),
      controller: scrollController,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        var item = items[index];
        return HomeCryptoListItem(
          token: item.label!,
          previousPrice: item.previousPrice!,
          actualPrice: item.actualPrice!,
          label: item.label!,
          fullLabel: item.fullLabel!,
          rank: item.rank!,
          description: item.description!,
        );
      },
    );
  }
}
