import 'package:get/get.dart';

import 'package:crypto_market/app/modules/chart/bindings/chart_binding.dart';
import 'package:crypto_market/app/modules/chart/views/chart_view.dart';
import 'package:crypto_market/app/modules/home/bindings/home_binding.dart';
import 'package:crypto_market/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CHART,
      page: () => ChartView(token: 'eth',),
      binding: ChartBinding(),
    ),
  ];
}
