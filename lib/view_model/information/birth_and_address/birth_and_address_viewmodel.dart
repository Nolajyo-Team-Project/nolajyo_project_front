import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:nolajyo_project/utils/utils.dart';

class BirthAndAddressViewModel extends GetxController {
  final TextEditingController birthEditingController = TextEditingController();
  final RxString birthValue = ''.obs;

  @override
  void onInit() {
    super.onInit();
    birthEditingController.addListener(() {
      birthValue.value = birthEditingController.text;
    });
  }

  @override
  void onClose() {
    birthEditingController.dispose();
    super.onClose();
  }

  void getBirthDateFormat(date) {
    birthEditingController.text = DateFormat('yyyy.MM.dd').format(date);
  }
}
