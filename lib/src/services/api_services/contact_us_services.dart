import 'package:beyobox/src/injection.dart';
import 'package:beyobox/src/shared/clients/network/network_client.dart';
import 'package:beyobox/src/shared/utility/app_extensions.dart';
import 'package:get/get.dart';

class ContactUsServices extends GetxController {
  //GET request example
  Future<void> getDataMethod() async {
    var response = await getIt<NetworkClient>().get('/api/v1/pizza_shop/pizza_list');
  }

//post request example
  Future<void> sendEmail(Map<String, dynamic> param) async {
    var response = await getIt<NetworkClient>().post(
      '/api/v1/send_email',
      data: param,
    );

    if (response.statusCode == 200) {
      'AppToast.show message sent successfully'.logThis();
      // AppToast.show(message: 'message sent successfully', type: AppEnumSnackbarType.success);
    } else {
      "AppToast.show message can't send".logThis();
      // AppToast.show(message: "message can't send", type: AppEnumSnackbarType.error);
    }
  }
}
