import 'package:flutter/material.dart';
import 'package:nolajyo_project/res/color_data.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          title: '노라죠',
          theme: ThemeData(
            primarySwatch: createMaterialColor(mainColor),
          ),
          home: child,
        );
      },
      child: Container(),
    );
  }
}
