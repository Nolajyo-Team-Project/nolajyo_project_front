import 'package:flutter/material.dart';
import 'package:nolajyo_project/data/color_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '노라죠',
      theme: ThemeData(
        primarySwatch: createMaterialColor(mainColor),
      ),
      home: Container(),
    );
  }
}
