import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:registrationpage/Core/Network/DioClient.dart';
import 'package:registrationpage/Core/showSuccessDialog.dart';
import 'package:registrationpage/Models/User.dart';

class RegistrationController extends GetxController {
  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  void register() async {
    User user = User(
        fname: fname.value.text,
        lname: lname.value.text,
        username: username.value.text,
        phone: phone.value.text,
        email: email.value.text,
        password: password.value.text);
    String request_body = user.toJson();
    var post = await DioClient()
        .getInstance()
        .post("/signin_user", data: request_body);
    if (post.statusCode == 200) {
      showSuccessDialog(Get.context!, 'Success', 'User Registered Successfully',
          () {
        print("inside print data");
        print(post.data);
      });
    }
  }
}
