import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nolajyo_project/res/constants/constants.dart';

class NicknameInfoViewModel extends GetxController {
  final TextEditingController nicknameEditingController = TextEditingController();
  final Rx<Gender> genderStatus = Gender.male.obs;
  final List genderList = ["남성", "여성", "비공개"].obs;
  final RxString nicknameValue = ''.obs;

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
