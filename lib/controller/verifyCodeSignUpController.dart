

import 'package:get/get.dart';
import 'package:master_car/core/class/statusRequest.dart';
import 'package:master_car/core/functions/handelingdata.dart';

import '../core/constant/roots.dart';
import '../data/data_source/remote/verifycodesignup.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  checkCode();
  goToSuccessSignUp(String verfiyCodeSignUp);
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {
  VerfiyCodeSignUpData verfiyCodeSignUpData = VerfiyCodeSignUpData(Get.find());

  String? email;

  StatusRequest statusRequest = StatusRequest.none;

  @override
  checkCode() {}

  @override
  goToSuccessSignUp(verfiyCodeSignUp) async {
    statusRequest = StatusRequest.loading;
    update();
    var response =
        await verfiyCodeSignUpData.postdata(email!, verfiyCodeSignUp);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.offNamed(AppRoute.successSignUp);
      } else {
        Get.defaultDialog(
            title: "ُWarning", middleText: "Verify Code Not Correct");
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  reSend() {
    verfiyCodeSignUpData.resendData(email!);
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }
}
