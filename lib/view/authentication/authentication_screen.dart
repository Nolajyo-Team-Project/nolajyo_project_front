import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nolajyo_project/res/components/base_screen.dart';
import 'package:nolajyo_project/res/constants/color_data.dart';
import 'package:nolajyo_project/res/constants/font_data.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({super.key});

  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: "전화번호를 인증해주세요",
      isHomeScreen: false,
      // 다음 button
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

      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "휴대폰 전화번호를 입력해 주세요.",
              style: bodyTextStyle,
            ),

            const SizedBox(
              height: 10,
            ),

            //* phone number enter
            TextFormField(
              controller: phoneNumberController,
              keyboardType: TextInputType.number,
              style: bodyTextStyle,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                // FilteringTextInputFormatter.allow(
                //   RegExp(
                //     r'[[0-9]]',
                //   ),
                // )
              ],
              decoration: InputDecoration(
                hintText: '',
                constraints: const BoxConstraints(maxHeight: 47),
                prefixText: "010 ",
                contentPadding: const EdgeInsets.all(9),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: gray1),
                    onPressed: () {},
                    child: const Text(
                      "인증하기",
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
              height: 15,
            ),

            const Text(
              "인증번호를 입력해 주세요.",
              style: bodyTextStyle,
            ),

            // Authentication number enter
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                constraints: const BoxConstraints(maxHeight: 47),
                contentPadding: const EdgeInsets.all(9),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: gray2, width: 2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
