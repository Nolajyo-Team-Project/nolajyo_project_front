import 'package:flutter/material.dart';

class BaseScreen extends StatelessWidget {
  final Widget? child;
  const BaseScreen({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: child!),
    );
  }
}
