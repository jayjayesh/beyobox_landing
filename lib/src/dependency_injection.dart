import 'package:get/get.dart';

import 'services/api_services/contact_us_services.dart';

class DependencyInjection {
  static void init() async {
    Get.put<GetConnect>(GetConnect());
    Get.put<ContactUsServices>(ContactUsServices()); //initializing REST API class
  }
}
