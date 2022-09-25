import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nolajyo_project/res/constants/color_data.dart';
import 'package:nolajyo_project/res/components/base_screen.dart';
import 'package:nolajyo_project/res/constants/constants.dart';
import 'package:nolajyo_project/res/constants/font_data.dart';
import 'package:nolajyo_project/view/information/nickname/components/gender_button.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:nolajyo_project/view_model/information/nickname/nickname_info_viewmodel.dart';

class NicknameInfoScreen extends GetView<NicknameInfoViewModel> {
  NicknameInfoScreen({super.key});
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NicknameInfoViewModel());
    return BaseScreen(
      title: "회원 정보를 입력해주세요",
      isHomeScreen: false,
      floatingActionButton: Obx(
        () => SizedBox(
          width: 329,
          height: 70,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: controller.nicknameValue.value.isEmpty
                ? null
                : () {
                    var key = _fbKey.currentState!;
                    if (key.saveAndValidate()) {}
                  },
            child: const Text(
              "다음",
              style: buttonTextStyle,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      child: FormBuilder(
        key: _fbKey,
        autovalidateMode: AutovalidateMode.disabled,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "닉네임을 만들어주세요",
              style: bodyTextStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            FormBuilderTextField(
              name: 'name',
              style: bodyTextStyle,
              maxLength: 16,
              controller: controller.nicknameEditingController,
              keyboardType: TextInputType.text,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                counterText: "",
                hintText: '한글 및 영문 8~16자 이내',
                hintStyle: bodyTextStyle.copyWith(color: placeHolderTextColor),
                contentPadding: const EdgeInsets.all(9),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: SizedBox(
                    height: 30,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(3, 4, 3, 5),
                        backgroundColor: gray1,
                      ),
                      onPressed: () {},
                      child: const Text(
                        "중복확인",
                        style: bodyTextStyle,
                      ),
                    ),
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: gray2, width: 2),
                ),
              ),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.minLength(
                  8,
                  errorText: '최소 8자까지 입력해주세요.',
                ),
              ]),
            ),
            const SizedBox(
              height: 23,
            ),
            const Text(
              "성별을 선택해주세요",
              style: bodyTextStyle,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "맞춤 모임을 추천해 드려요",
              style: bodyTextStyle.copyWith(color: placeHolderTextColor),
            ),
            const SizedBox(
              height: 18,
            ),
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(controller.genderList.length, (i) {
                  return GenderButton(
                    controller.genderList[i],
                    selected: controller.genderStatus.value == Gender.values[i],
                    onPressed: () {
                      controller.genderStatus.value = Gender.values[i];
                    },
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
