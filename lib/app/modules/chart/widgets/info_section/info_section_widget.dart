import 'package:crypto_market/app/constant.dart';
import 'package:crypto_market/app/modules/chart/widgets/info_section/widgets/info_widget.dart';
import 'package:flutter/material.dart';

class CryptoDetailsInfoSection extends StatelessWidget {
  const CryptoDetailsInfoSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackgroundColor,
      padding: const EdgeInsets.all(16.0),
      child: const Column(
        children: [
          CryptoDetailsInfo(
            title: 'Trading Volume',
            price: '\$2,310,444,879.91',
            percent: '16.06',
            isBullish: true,
          ),
          Divider(
            height: 20,
            thickness: 1,
            color: kGreyColor,
          ),
          CryptoDetailsInfo(
            title: 'Market Cap',
            price: '\$92,483,944,153.16',
            percent: '5.31',
            isBullish: false,
          ),
          Divider(
            height: 20,
            thickness: 1,
            color: kGreyColor,
          ),
          CryptoDetailsInfo(
            title: 'All Time High (May, 10, 2021)',
            price: '\$690.93',
            percent: '19.75',
            isBullish: false,
          ),
          Divider(
            height: 20,
            thickness: 1,
            color: kGreyColor,
          ),
          CryptoDetailsInfo(
            title: 'All Time Low (Aug, 01, 2017',
            price: '\$0.09611',
            percent: '576821.14',
            isBullish: true,
          ),
        ],
      ),
    );
  }
}
