import 'package:flutter/material.dart';
import 'package:nolajyo_project/res/color_data.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nolajyo_project/view/persmission/permission_screen.dart';

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
        //
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: '노라죠',
          theme: ThemeData(
            fontFamily: 'Noto Sans Kr',
            primarySwatch: createMaterialColor(mainColor),
          ),
          home: child,
        );
      },

      // if the permission is already enabled or the user is already registered, directly go to the main screen
      child: const PermissionScreen(),
    );
  }
}
