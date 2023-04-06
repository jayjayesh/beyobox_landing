import 'dart:io';

import 'package:beyobox/src/shared/utility/app_extensions.dart';
import 'package:get/get.dart';

class ContactUsServices extends GetxController {
  final GetConnect connect = Get.find<GetConnect>();

  //GET request example
  Future<dynamic> getDataMethod() async {
    // Response response = await connect.get('https://api.sampleapis.com/coffee/hot');
    Response response = await connect.get('http://192.168.2.121:8080/api/v1/pizza_shop/pizza_list');
    print('getDataMethod : pizza_list : ${response.body}');
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return null;
    }
  }

//post request example
  Future<void> sendEmail(Map<String, dynamic> param) async {
    //body data
    FormData formData = FormData(param);

    Response response = await connect.post(
      'http://172.16.0.196:8080/api/v1/send_email',
      param,
      contentType: ContentType.json.value,
      headers: {
        HttpHeaders.contentTypeHeader: ContentType.json.value,
        HttpHeaders.acceptHeader: ContentType.json.value,
      },
    );
    if (response.statusCode == 200) {
      'AppToast.show message sent successfully'.logThis();
      // AppToast.show(message: 'message sent successfully', type: AppEnumSnackbarType.success);
    } else {
      "AppToast.show message can't send".logThis();
      // AppToast.show(message: "message can't send", type: AppEnumSnackbarType.error);
    }
  }

  //post request example
  Future<void> postDataMethod() async {
    //body data
    FormData formData = FormData({
      'field_name': 'field_value',
      'field_name': 'field_value',
    });

    Response response = await connect.post('your_post_api_url', formData);
    if (response.statusCode == 200) {
    } else {}
  }
}
