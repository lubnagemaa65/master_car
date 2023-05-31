

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:master_car/core/class/statusRequest.dart';

import '../constant/assetImage.dart';


class HandelingDataView extends StatelessWidget {
  final StatusRequest? statusRequest;
  final Widget widget;
  const HandelingDataView(
      {Key? key, required this.statusRequest, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
            child: Lottie.asset(AppImageAsset.loading, width: 250, height: 250))
        : statusRequest == StatusRequest.offlinefailure
            ? Center(
                child: Lottie.asset(AppImageAsset.offline,
                    width: 250, height: 250))
            : statusRequest == StatusRequest.serverfailure
                ? Center(
                    child: Lottie.asset(AppImageAsset.server,
                        width: 250, height: 250))
                : statusRequest == StatusRequest.failure
                    ? Center(
                        child: Lottie.asset(AppImageAsset.noData,
                            width: 250, height: 250, repeat: true))
                    : widget;
  }
}

class HandelingDataRequest extends StatelessWidget {
  final StatusRequest? statusRequest;
  final Widget widget;
  const HandelingDataRequest(
      {Key? key, required this.statusRequest, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
            child: Lottie.asset(AppImageAsset.loading, width: 250, height: 250))
        : statusRequest == StatusRequest.offlinefailure
            ? Center(
                child: Lottie.asset(AppImageAsset.offline,
                    width: 250, height: 250))
            : statusRequest == StatusRequest.serverfailure
                ? Center(
                    child: Lottie.asset(AppImageAsset.server,
                        width: 250, height: 250))
                : widget;
  }
}
