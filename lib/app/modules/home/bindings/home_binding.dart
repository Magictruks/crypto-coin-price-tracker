import 'package:crypto_market/app/modules/home/widgets/crypto_card/crypto_card_controller.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<CryptoCardController>(
          () => CryptoCardController(),
    );
  }
}
