
import 'package:get/get.dart';
import 'package:master_car/core/class/statusRequest.dart';
import 'package:master_car/core/functions/handelingdata.dart';
import 'package:master_car/core/services/services.dart';

import '../core/constant/roots.dart';
import '../data/data_source/remote/homeData.dart';

abstract class HomeController extends GetxController {
  initialData();
  getData();
  goToItems(List categories, int selectedCat, categoryid);
}

class HomeControllerImp extends HomeController {
  MyServices myServices = Get.find();
  String? username;
  List data = [];
  List categories = [];
  List items = [];
  String? lang;
  late StatusRequest statusRequest;
  HomeData homeData = HomeData(Get.find());

  @override
  initialData() {
    username = myServices.sharedPreferences.getString("username");

    lang = myServices.sharedPreferences.getString("lang");
  }

  @override
  void onInit() {
    initialData();
    super.onInit();
  }

  @override
  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await homeData.getData();
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // when there is a crud in data
      categories.addAll(response['categories']);
      items.addAll(response['items']);
    } else {
      // there is no data neither an update.
      statusRequest = StatusRequest.failure;
    }
    update();
  }

  @override
  goToItems(categories, selectedCat, categoryid) {
    Get.toNamed(AppRoute.items, arguments: {
      "categories": categories,
      "selectedCat": selectedCat,
      "catid": categoryid,
    });
  }
}
