import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_store_app/models/store_review_model.dart';

class StoreController extends GetxController {
  
  //Store Name
  final storeName = "MyStore".obs;
  //Count
  final followerCount = 0.obs;
  //Status
  final storeStatus = false.obs;
  //Reviews
  final storeReview = <StoreReview>[].obs;
  //Follower List Name
  final followerList = [].obs;
  //Updates
  updateStoreName(name) {
    storeName(name);
  }

  incrementFollowers() {
    followerCount(followerCount.value + 1);
  }

  changeStatus(bool isOpen) {
    storeStatus(isOpen);
  }
  //Controllers
  final storeNameController = TextEditingController();
  final followerController = TextEditingController();
  final reviewContoller = TextEditingController();
  final reviewNameController = TextEditingController();
}
