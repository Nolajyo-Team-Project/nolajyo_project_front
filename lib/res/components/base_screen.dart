import 'package:flutter/material.dart';
import 'package:nolajyo_project/res/constants/color_data.dart';
import 'package:nolajyo_project/res/constants/font_data.dart';

class BaseScreen extends StatelessWidget {
  final Widget? child;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final bool isHomeScreen;
  final String title;
  const BaseScreen({
    super.key,
    this.child,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    required this.isHomeScreen,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 8, 30, 30),
          child: child,
        ),
      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: mainTextColor),
        backgroundColor: white,
        elevation: 0,
        titleSpacing: 30,
        automaticallyImplyLeading: false,
        actions: [
          isHomeScreen
              ? Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search),
                      splashRadius: 20,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.menu,
                      ),
                      splashRadius: 20,
                    ),
                    const SizedBox(width: 10),
                  ],
                )
              : Container()
        ],
        title: Text(
          title,
          style: titleTextStyle,
        ),
        centerTitle: false,
      ),
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
    );
  }
}
