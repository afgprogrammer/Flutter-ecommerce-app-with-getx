import 'package:get/get_connect.dart';
import 'package:day59/services/networking/ApiConstants.dart';
import 'package:day59/services/networking/interceptors/RequestInterceptor.dart';
import 'package:day59/services/networking/interceptors/ResponseInterceptor.dart';

class BaseProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = ApiConstants.baseUrl;
    httpClient.addRequestModifier(requestInterceptor);
    httpClient.addResponseModifier(responseInterceptor);
  }
}
