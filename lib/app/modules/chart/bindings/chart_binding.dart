import 'package:get/get.dart';

import '../controllers/chart_controller.dart';

class ChartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChartController>(
      () => ChartController(),
    );
  }
}
