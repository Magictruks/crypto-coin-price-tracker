import 'package:get/get.dart';

import '../fake_token_model_model.dart';

class FakeTokenModelProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return FakeTokenModel.fromJson(map);
      if (map is List)
        return map.map((item) => FakeTokenModel.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<FakeTokenModel?> getFakeTokenModel(int id) async {
    final response = await get('faketokenmodel/$id');
    return response.body;
  }

  Future<Response<FakeTokenModel>> postFakeTokenModel(
          FakeTokenModel faketokenmodel) async =>
      await post('faketokenmodel', faketokenmodel);
  Future<Response> deleteFakeTokenModel(int id) async =>
      await delete('faketokenmodel/$id');
}
