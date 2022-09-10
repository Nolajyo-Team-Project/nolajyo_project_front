import 'package:flutter/material.dart';
import 'package:nolajyo_project/res/color_data.dart';
import 'package:nolajyo_project/res/components/base_screen.dart';
import 'package:nolajyo_project/res/constants/constants.dart';
import 'package:nolajyo_project/view/information/nickname/components/gender_button.dart';

class NicknameInfoScreen extends StatefulWidget {
  const NicknameInfoScreen({super.key});

  @override
  State<NicknameInfoScreen> createState() => _NicknameInfoScreenState();
}

class _NicknameInfoScreenState extends State<NicknameInfoScreen> {
  int? gender;

  void selectGender(int index) {
    setState(() {
      gender = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
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
          onPressed: () {},
          child: const Text(
            "다음",
            style: buttonTextStyle,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
            "닉네임을 만들어주세요",
            style: bodyTextStyle,
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            style: bodyTextStyle,
            decoration: InputDecoration(
              hintText: '한글 및 영문 8~16자 이내',
              hintStyle: bodyTextStyle.copyWith(color: placeHolderTextColor),
              constraints: const BoxConstraints(maxHeight: 47),
              contentPadding: const EdgeInsets.all(9),
              suffixIcon: Padding(
                padding: const EdgeInsets.all(9.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: gray1),
                  onPressed: () {},
                  child: const Text(
                    "중복확인",
                    style: bodyTextStyle,
                  ),
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: gray2, width: 2),
              ),
            ),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              GenderButton(
                "남성",
                selected: false,
              ),
              GenderButton(
                "여성",
                selected: true,
              ),
              GenderButton(
                "비공개",
                selected: false,
              )
            ],
          )
        ],
      ),
    );
  }
}
