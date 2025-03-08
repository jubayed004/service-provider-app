import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabbarController extends GetxController with SingleGetTickerProviderMixin {
  late TabController tabController;

  final List<String> nameList = ['Chat', 'Alerts'];
  final RxInt currentIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: nameList.length, vsync: this);
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}