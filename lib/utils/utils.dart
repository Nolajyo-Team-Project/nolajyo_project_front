import 'package:fluttertoast/fluttertoast.dart';
import 'package:nolajyo_project/res/constants/color_data.dart';

DateTime? currentBackPressTime;

// 홈(main) 페이지에서 뒤로가기 두번 클릭시 앱을 종료하는 함수
// 버튼 1번 클릭 시 토스트로 메시지 띄워주고 2초 안에 재 클릭 시 앱 종료
onBackPressed() {
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
