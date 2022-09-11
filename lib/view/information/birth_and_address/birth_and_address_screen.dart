import 'package:flutter/material.dart';
import 'package:nolajyo_project/data/local_datasource.dart';
import 'package:nolajyo_project/res/color_data.dart';
import 'package:nolajyo_project/res/components/base_screen.dart';
import 'package:nolajyo_project/res/constants/constants.dart';

class BirthAndAddressScreen extends StatefulWidget {
  const BirthAndAddressScreen({super.key});

  @override
  State<BirthAndAddressScreen> createState() => _BirthAndAddressScreenState();
}

class _BirthAndAddressScreenState extends State<BirthAndAddressScreen> {
  // defalut 값을 서울특별시
  String selectedRegion = regionList[0];

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
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
          TextFormField(
            keyboardType: TextInputType.number,
            style: bodyTextStyle,
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
          DropdownButtonFormField(
            style: bodyTextStyle,
            isExpanded: true,
            menuMaxHeight: MediaQuery.of(context).size.height * 0.5,
            icon: const Icon(Icons.keyboard_arrow_down),
            iconSize: 24,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(11),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            value: selectedRegion,
            items: regionList.map((String item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Text(item),
              );
            }).toList(),
            onChanged: ((value) => setState(() {
                  selectedRegion = value.toString();
                })),
          ),
          const Spacer(),
          SizedBox(
            width: MediaQuery.of(context).size.width - 60,
            height: 70,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(19),
                ),
              ),
              onPressed: () {},
              child: Text(
                "다음",
                style: buttonTextStyle.copyWith(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
