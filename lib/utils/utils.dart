import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:nolajyo_project/res/components/dialog_component.dart';
import 'package:nolajyo_project/res/components/rounded_button.dart';
import 'package:nolajyo_project/res/constants/color_data.dart';
import 'package:nolajyo_project/res/constants/font_data.dart';
import 'package:permission_handler/permission_handler.dart';

class GlobalUtils {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static DateTime? currentBackPressTime;

  // 홈(main) 페이지에서 뒤로가기 두번 클릭시 앱을 종료하고 boolean을 리턴하는 함수
  // 버튼 1번 클릭 시 토스트로 메시지 띄워주고 2초 안에 재 클릭 시 앱 종료
  static bool onBackPressed() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime!) > const Duration(seconds: 2)) {
      currentBackPressTime = now;
      Fluttertoast.showToast(
        msg: "한번 더 누르시면 종료됩니다.",
        gravity: ToastGravity.BOTTOM,
        backgroundColor: gray3,
        fontSize: 14,
        toastLength: Toast.LENGTH_SHORT,
      );
      return false;
    }
    return true;
  }

  //외부 파일(저장)접근, 카메라, 전화에 대한 권한을 물어보는 함수
  //권한을 모두 물어보고 하나라도 거부 되어있다면 팝업창 안내, 모두 허용 되어있다면 함수의 파라미터를 받는 곳으로 이동
  static void getPermission(String route) async {
    bool isDeniedPermissions;

    Map<Permission, PermissionStatus> statuses = await [
      Permission.camera,
      Permission.phone,
      Permission.storage
    ].request();

    isDeniedPermissions = statuses.values.any(
      (element) =>
          element == PermissionStatus.denied ||
          element == PermissionStatus.permanentlyDenied,
    );

    if (isDeniedPermissions) {
      showDialog(
        context: navigatorKey.currentContext!,
        builder: (BuildContext context) {
          return DialogComponent(
            title: '알림',
            content: const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text:
                        '앱 필수 접근 권한을 허용해 주셔야 정상적인\n 서비스 이용이 가능합니다.\n(단말기 설 > 앱 > 놀아죠 > 앱권한 설정)',
                    style: bodyTextStyle,
                  ),
                ],
              ),
            ),
            actionContent: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RoundedButton(
                  title: '취소',
                  onTap: () async {
                    Get.back();
                  },
                ),
                const SizedBox(
                  width: 40,
                ),
                RoundedButton(
                  title: '설정하기',
                  onTap: () async {
                    openAppSettings();
                  },
                ),
              ],
            ),
          );
        },
      );
    } else {
      Get.toNamed(route);
    }
  }
}
