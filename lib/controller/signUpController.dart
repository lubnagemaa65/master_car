

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_car/core/class/statusRequest.dart';
import 'package:master_car/core/constant/roots.dart';
import 'package:master_car/data/data_source/remote/signup.dart';


import '../core/functions/handelingdata.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToSignIn();
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController FirstName;
    late TextEditingController LastName;

  late TextEditingController phone;
    late TextEditingController City;
      late TextEditingController Gender;
  late TextEditingController DateOfBirth;


  late TextEditingController email;
  late TextEditingController password;

  StatusRequest statusRequest = StatusRequest.none;
  SignupData signupData = SignupData(Get.find());
  List data = [];

  @override
  signUp() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await signupData.postData(
          FirstName.text,LastName.text,City.text,Gender.text,DateOfBirth.text, password.text, email.text, phone.text);
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        // when there is a crud in data
        //data.addAll(response['data']);
        Get.offNamed(AppRoute.verifyCodeSignUp,
           // arguments: {"email": email.text, "verifycode": VerifyCode
          // }
           );
      } else {
        // there is no data neither an update.
        Get.defaultDialog(
            title: "ُWarning",
            middleText: "Phone Number Or Email Already Exists");
        statusRequest = StatusRequest.failure;
      }
      update();
    }
//Get.delete <SignUpController>();
  }

  @override
  goToSignIn() {
    Get.offNamed(AppRoute.login);
  }

  @override
  void onInit() {
    FirstName = TextEditingController();
    LastName = TextEditingController();

    phone = TextEditingController();
    City = TextEditingController();
    Gender = TextEditingController();
    DateOfBirth = TextEditingController();

    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    FirstName.dispose();
    LastName.dispose();
    phone.dispose();
    City.dispose();
    Gender.dispose();
    DateOfBirth.dispose();

    email.dispose();
    password.dispose();
    super.dispose();
  }
}
