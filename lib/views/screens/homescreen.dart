
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_car/controller/homeScreenController.dart';
import 'package:master_car/core/constant/color.dart';

import '../widgets/home/custombottomAppBarHome.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
        builder: (controller) => Scaffold(
              floatingActionButton: FloatingActionButton(
                  onPressed: () {},
                  child: const Icon(Icons.search)),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              backgroundColor: ColorApp.secondColor,
              bottomNavigationBar: const CustomBottomAppBarHome(),
              body: controller.listPage.elementAt(controller.currentpage),
            ));
  }
}
