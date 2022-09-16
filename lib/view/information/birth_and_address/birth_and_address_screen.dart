import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:nolajyo_project/data/local_datasource.dart';
import 'package:nolajyo_project/res/components/base_screen.dart';
import 'package:nolajyo_project/res/constants/color_data.dart';
import 'package:nolajyo_project/res/constants/font_data.dart';
import 'package:nolajyo_project/view_model/information/birth_and_address/birth_and_address_viewmodel.dart';

class BirthAndAddressScreen extends GetView<BirthAndAddressViewModel> {
  BirthAndAddressScreen({super.key});

  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

  Widget regionDropDownWidget(
    BuildContext context,
    String? item,
    bool isSelected,
  ) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
      child: Text(
        "$item",
        style: isSelected ? bodyMainTextStyle : bodyTextStyle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BirthAndAddressViewModel());
    return BaseScreen(
      child: FormBuilder(
        key: _fbKey,
        autovalidateMode: AutovalidateMode.disabled,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "회원 정보를 입력해주세요",
              style: titleTextStyle,
            ),
            const SizedBox(
              height: 49,
            ),
            const Text(
              "생월일을 입력해주세요",
              style: bodyTextStyle,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "비슷한 나이대의 모임을 추천해 드려요",
              style: bodyTextStyle.copyWith(color: placeHolderTextColor),
            ),
            const SizedBox(
              height: 10,
            ),
            FormBuilderTextField(
              controller: controller.birthEditingController,
              style: bodyTextStyle,
              onTap: () async {
                DatePicker.showDatePicker(
                  context,
                  showTitleActions: true,
                  minTime: DateTime(1930, 1, 1),
                  maxTime: DateTime(2005, 12, 30),
                  onConfirm: (date) {
                    controller.getBirthDateFormat(date);
                  },
                  currentTime: DateTime(1995, 12, 30),
                  locale: LocaleType.ko,
                );
              },
              readOnly: true,
              name: 'birth',
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: '생년월일 8자리를 입력해 주세요.',
                hintStyle: bodyTextStyle.copyWith(color: placeHolderTextColor),
                constraints: const BoxConstraints(maxHeight: 47),
                contentPadding: const EdgeInsets.all(9),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: gray2, width: 2),
                ),
              ),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(errorText: '생년월일을 입력해주세요.'),
              ]),
            ),
            const SizedBox(
              height: 27,
            ),
            const Text(
              "사는 곳을 선택해주세요",
              style: bodyTextStyle,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "가까운 곳의 모임을 추천해 드려요",
              style: bodyTextStyle.copyWith(color: placeHolderTextColor),
            ),
            const SizedBox(
              height: 6,
            ),
            DropdownSearch<String>(
              popupProps: PopupProps.menu(
                showSelectedItems: true,
                itemBuilder: regionDropDownWidget,
              ),
              dropdownBuilder: (context, value) {
                return Text(
                  "$value",
                  style: bodyTextStyle,
                );
              },
              dropdownButtonProps: const DropdownButtonProps(
                icon: Icon(Icons.keyboard_arrow_down),
                iconSize: 24,
              ),
              dropdownDecoratorProps: DropDownDecoratorProps(
                baseStyle: bodyTextStyle,
                dropdownSearchDecoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(11),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              items: regionList,
              onChanged: print,
              selectedItem: regionList[0],
            ),
            const Spacer(),
            SizedBox(
              width: MediaQuery.of(context).size.width - 60,
              height: 70,
              child: Obx(
                () => ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19),
                    ),
                  ),
                  onPressed: controller.birthValue.value.isEmpty
                      ? null
                      : () {
                          var key = _fbKey.currentState!;
                          if (key.saveAndValidate()) {}
                        },
                  child: Text(
                    "다음",
                    style: buttonTextStyle.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
