
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_car/core/class/handelingDataVieww.dart';
import 'package:master_car/core/constant/assetImage.dart';
import 'package:master_car/core/constant/color.dart';
import 'package:master_car/views/widgets/home/custom_profile_image_view.dart';

import '../../../controller/homeController.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return GetBuilder<HomeControllerImp>(
        builder: (controller) => HandelingDataView(
            statusRequest: controller.statusRequest,
            widget: Card(
              clipBehavior: Clip.antiAlias,
              
                child: Stack(
               alignment:Alignment.center,
               children: [
                CircleImage(AppImageAsset.user_photo,alignment:Alignment.center,height:100),
                Text("UserName",style: TextStyle(color: ColorApp.primaryColor),),
               
              
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    
                    Text("your statistics this month:"),
                  Column(
                    
                    children: [
                     Container(
                      color: ColorApp.grey,
                       child: Row(children: [
                        Icon(Icons.trip_origin_sharp),
                        Text("5",style: TextStyle(color: ColorApp.secondColor),),
                        Spacer(),
                        Icon(Icons.numbers_sharp),
                        Text("1230",style: TextStyle(color: ColorApp.secondColor),),
                       ],),
                     ),
                     SizedBox(height: 10,),

                    ],
                  )
                 ],),
               
               
               ],),
          
                    // const customcardhome(
                    //     title: "a summer surprise", body: "cashback 20%"),
                    // const customtitlehome(title: "categories"),
                    // const listcategorieshome(),
                    // const customtitlehome(title: "product for you"),
                    // const listitemshome(),
                    // const customtitlehome(title: "offer"),
                    // const listitemshome()
                  
                ))));
  }
}
