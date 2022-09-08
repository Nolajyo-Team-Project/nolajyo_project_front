import 'package:flutter/material.dart';

import 'package:nolajyo_project/res/constants/constants.dart';

import '../../../res/color_data.dart';

class PermissionInfo extends StatelessWidget {
  final String kind, description;
  final IconData icon;
  const PermissionInfo({super.key, required this.kind, required this.icon, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(28, 0, 31, 0),
      margin: const EdgeInsets.only(bottom: 25),
      child: Row(
        children: [
          // Icon
          Icon(
            icon,
            size: 24,
          ),

          //
          const SizedBox(
            width: 20,
          ),
          // kind of permission
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // permission kind
              Text(
                '$kind (필수)',
                style: bodyTextStyle,
              ),

              //
              const SizedBox(
                height: 8.85,
              ),

              // description
              Text(description, style: const TextStyle(fontSize: 14, color: placeHolderTextColor)),
            ],
          )
        ],
      ),
    );
  }
}
