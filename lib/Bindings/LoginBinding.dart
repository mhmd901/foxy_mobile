import 'package:get/get.dart';
import 'package:registrationpage/Controllers/LoginController.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => LoginController());
  }



}