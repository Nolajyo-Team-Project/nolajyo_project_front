import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nolajyo_project/models/nickname_info_model.dart';
import 'package:nolajyo_project/res/constants/constants.dart';

class NicknameInfoViewModel extends GetxController {
  final TextEditingController nicknameEditingController =
      TextEditingController();
  Rx<Gender> genderStatus = Gender.male.obs;
  List genderList = ["남성", "여성", "비공개"].obs;
  RxString nicknameValue = ''.obs;

  @override
  void onInit() {
    super.onInit();
    nicknameEditingController.addListener(() {
      nicknameValue.value = nicknameEditingController.text;
    });
  }

  @override
  void onClose() {
    nicknameEditingController.dispose();
    super.onClose();
  }
}
