import 'package:flutter/material.dart';
import 'package:nolajyo_project/res/color_data.dart';
import 'package:nolajyo_project/res/constants/constants.dart';

class GenderButton extends StatelessWidget {
  final String gender;
  final bool selected;
  const GenderButton(
    this.gender, {
    super.key,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 105,
      height: 47,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: selected ? mainColor : gray1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        onPressed: () {},
        child: Text(
          gender,
          style: selected ? bodyTextStyle.copyWith(color: Colors.white) : bodyTextStyle,
        ),
      ),
    );
  }
}
