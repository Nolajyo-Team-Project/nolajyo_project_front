import 'package:flutter/material.dart';
import 'package:nolajyo_project/res/constants/constants.dart';

class SelectionTile extends StatelessWidget {
  final String name;
  const SelectionTile({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(31), color: const Color(0xfff4f4f4)),
          ),
          const SizedBox(
            height: 14,
          ),
          Text(
            name,
            style: bodyTextStyle,
          )
        ],
      ),
    );
  }
}
