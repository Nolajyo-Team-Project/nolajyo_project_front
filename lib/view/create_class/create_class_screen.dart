import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:nolajyo_project/data/local_datasource.dart';
import 'package:nolajyo_project/res/components/base_screen.dart';
import 'package:nolajyo_project/res/constants/color_data.dart';
import 'package:nolajyo_project/res/constants/font_data.dart';
import 'package:nolajyo_project/view_model/create_class/create_class_viewmodel.dart';

class CreateClassScreen extends GetView<CreateClassViewModel> {
  CreateClassScreen({super.key});

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
    final controller = Get.put(CreateClassViewModel());
    return BaseScreen(
      title: "모임 만들기",
      isHomeScreen: false,
      floatingActionButton: SizedBox(
        width: 329,
        height: 70,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: () {
            var key = _fbKey.currentState!;
            if (key.saveAndValidate()) {}
          },
          child: const Text(
            "다음",
            style: buttonTextStyle,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      child: Scaffold(
        body: FormBuilder(
          key: _fbKey,
          autovalidateMode: AutovalidateMode.disabled,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const Text(
                "모임지역을 선택해 주세요.",
                style: bodyTextStyle,
              ),
              const SizedBox(
                height: 10,
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
              const SizedBox(
                height: 75,
              ),
              FormBuilderTextField(
                style: bodyTextStyle,
                name: 'name',
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: '모임 이름',
                  hintStyle:
                      bodyTextStyle.copyWith(color: placeHolderTextColor),
                  contentPadding: const EdgeInsets.all(9),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: gray2, width: 2),
                  ),
                ),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(errorText: '모임 이름을 입력해 주세요.'),
                ]),
              ),
              const SizedBox(
                height: 9,
              ),
              FormBuilderTextField(
                style: bodyTextStyle,
                name: 'name',
                maxLines: 20,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  hintText: '모임 소개 입력',
                  hintStyle:
                      bodyTextStyle.copyWith(color: placeHolderTextColor),
                  constraints: const BoxConstraints(maxHeight: 170),
                  contentPadding: const EdgeInsets.all(9),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: gray2, width: 2),
                  ),
                ),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(errorText: '모임 소개를 입력해 주세요.'),
                ]),
              ),
              const SizedBox(
                height: 9,
              ),
              FormBuilderTextField(
                style: bodyTextStyle,
                name: 'count',
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: '인원',
                  hintStyle:
                      bodyTextStyle.copyWith(color: placeHolderTextColor),
                  contentPadding: const EdgeInsets.all(9),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: gray2, width: 2),
                  ),
                ),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(errorText: '명수를 입력해 주세요.'),
                  FormBuilderValidators.integer(errorText: '숫자를 입력해 주세요.'),
                ]),
              ),
              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
