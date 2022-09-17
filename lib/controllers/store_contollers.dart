import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class StoreController extends GetxController {
  final storeName = "MyStore".obs;
  final followerCount = 0.obs;
  final storeStatus = false.obs;

  updateStoreName(name) {
    storeName(name);
  }

  incrementFollowers() {
    followerCount(followerCount.value + 1);
  }

  changeStatus(bool isOpen) {
    storeStatus(isOpen);
  }

  final storeNameController = TextEditingController();
  
}
