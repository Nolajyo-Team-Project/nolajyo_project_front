import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nolajyo_project/res/components/base_screen.dart';
import 'package:nolajyo_project/res/constants/font_data.dart';
import 'package:nolajyo_project/utils/utils.dart';
import 'package:nolajyo_project/view/persmission/components/permission_info.dart';

class PermissionScreen extends StatelessWidget {
  const PermissionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      isHomeScreen: false,
      title: "접근 권한 허용",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "놀아죠 이용을 위해 다음의\n접근 권한 허용이 필요합니다.",
            style: bodyTextStyle,
          ),
          const SizedBox(height: 49),
          const PermissionInfo(
            kind: "저장",
            description: '프로필, 사진첩 등 메모리에\n사진 데이터 저장',
            icon: Icons.save_alt,
          ),
          const PermissionInfo(
            kind: "카메라",
            description: '프로필,게시글 사진 등록',
            icon: Icons.camera_alt_outlined,
          ),
          const PermissionInfo(
            kind: "전화",
            description: '회원가입시 기기인증 상태 유지',
            icon: Icons.phone_in_talk_rounded,
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
              onPressed: () async {
                GlobalUtils.getPermission('/authentication');
              },
              child: Text(
                "확인",
                style: buttonTextStyle.copyWith(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
