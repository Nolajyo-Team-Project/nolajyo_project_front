import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nolajyo_project/res/color_data.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nolajyo_project/res/components/base_screen.dart';
import 'package:nolajyo_project/view/authentication/authentication_screen.dart';
import 'package:nolajyo_project/view/persmission/permission_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // routers
  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      // 임시 home screen
      GoRoute(
        name: "Home",
        path: '/',
        builder: (context, state) => const TempHomeScreen(),
      ),
      GoRoute(
        name: "Permission screen",
        path: '/permission',
        builder: (context, state) => const PermissionScreen(),
      ),
      GoRoute(
        name: "Authentication Screen",
        path: '/authentication',
        builder: (context, state) => const AuthenticationScreen(),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    //* Wrap the MaterialApp with ScreenUtil to match the design size to the app
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp.router(
          routeInformationProvider: _router.routeInformationProvider,
          routeInformationParser: _router.routeInformationParser,
          routerDelegate: _router.routerDelegate,
          debugShowCheckedModeBanner: false,
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
    return BaseScreen(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => GoRouter.of(context).go('/permission'),
              child: const Text("Go to permission screen"),
            ),
            ElevatedButton(
              onPressed: () => GoRouter.of(context).go('/authentication'),
              child: const Text("Go to auth screen"),
            ),
          ],
        ),
      ),
    );
  }
}
