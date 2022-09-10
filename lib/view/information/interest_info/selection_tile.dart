import 'package:flutter/material.dart';
import 'package:nolajyo_project/model/concern_model.dart';
import 'package:nolajyo_project/res/constants/constants.dart';

class SelectionTile extends StatelessWidget {
  final Concern concern;
  const SelectionTile({super.key, required this.concern});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            'https://preview.imagetoday.co.kr/2022/04/23/td02200000333.jpg',
          ),
          // Container(
          //   height: 100,
          //   width: 100,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(31),
          //     color: const Color(0xfff4f4f4),
          //   ),

          // ),
          const SizedBox(
            height: 14,
          ),
          Text(
            concern.name,
            style: bodyTextStyle,
          )
        ],
      ),
    );
  }
}
