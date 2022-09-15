import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogComponent extends StatelessWidget {
  const DialogComponent({
    super.key,
    required this.title,
    required this.content,
    required this.actionContent,
    this.onWillPop = false,
  });

  final String title;
  final Widget content;
  final Widget actionContent;
  final bool onWillPop;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => onWillPop,
      child: AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        title: Text(title.tr),
        content: content,
        actions: [
          actionContent,
        ],
      ),
    );
  }
}
