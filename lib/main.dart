import 'package:flutter/material.dart';
import 'package:nolajyo_project/res/constants/color_data.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nolajyo_project/res/components/base_screen.dart';
import 'package:nolajyo_project/utils/utils.dart';
import 'package:nolajyo_project/view/authentication/authentication_screen.dart';
import 'package:nolajyo_project/view/information/birth_and_address/birth_and_address_screen.dart';
import 'package:nolajyo_project/view/information/nickname/nickname_info_screen.dart';
import 'package:nolajyo_project/view/persmission/permission_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //* Wrap the MaterialApp with ScreenUtil to match the design size to the app
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          getPages: [
            GetPage(
              name: '/',
              page: () => const TempHomeScreen(),
            ),
            GetPage(
              name: '/permission',
              page: () => const PermissionScreen(),
            ),
            GetPage(
              name: '/authentication',
              page: () => const AuthenticationScreen(),
            ),
            GetPage(
              name: '/nicknameInfo',
              page: () => NicknameInfoScreen(),
            ),
            GetPage(
              name: '/birthAndAddress',
              page: () => const BirthAndAddressScreen(),
            )
          ],
          title: '노라죠',
          theme: ThemeData(
            fontFamily: 'Noto Sans Kr',
            primarySwatch: createMaterialColor(mainColor),
          ),
          // home: child,
        );
      },
    );
  }
}

class TempHomeScreen extends StatelessWidget {
  const TempHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        bool backResult = onBackPressed();
        return await Future.value(backResult);
      },
      child: BaseScreen(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => Get.toNamed('/permission'),
                child: const Text("Go to permission screen"),
              ),
              ElevatedButton(
                onPressed: () => Get.toNamed('/authentication'),
                child: const Text("Go to auth screen"),
              ),
              ElevatedButton(
                onPressed: () => Get.toNamed('/nicknameInfo'),
                child: const Text("Go to nickname info screen"),
              ),
              ElevatedButton(
                onPressed: () => Get.toNamed('/birthAndAddress'),
                child: const Text("Go to birth and address info screen"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
