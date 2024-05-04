import 'package:crypto_market/app/data/models/fake_token/fake_token_model_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final currentIndex = 0.obs;
  final List<FakeTokenModel> tokens = fake_token_data;
  final ScrollController scrollController = ScrollController();
  final Rx<double> scrollFadingOpacity = 1.0.obs;

  bool onListNotification(ScrollNotification t) {
    if (t.metrics.pixels >= t.metrics.maxScrollExtent &&
        scrollFadingOpacity.value != 0.0) {
      scrollFadingOpacity.value = 0.0;
    }
    if (t.metrics.pixels < t.metrics.maxScrollExtent &&
        scrollFadingOpacity.value != 1.0) {
      scrollFadingOpacity.value = 1.0;
    }
    return false;
  }
}
