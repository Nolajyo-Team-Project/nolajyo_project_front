import 'package:flutter/material.dart';
import 'package:nolajyo_project/models/concern_model.dart';
import 'package:nolajyo_project/res/constants/font_data.dart';

class SelectionTile extends StatelessWidget {
  final ConcernModel concern;
  final bool selected;
  const SelectionTile(
    this.concern, {
    super.key,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            // 선택되면 sel image를 겹쳐서 보여줍니다.
            Image.asset('assets/img/concern_icons/concern_icon_1.png'),
            if (selected) Image.asset('assets/img/concern_icons/concern_icon_sel.png'),
          ],
        ),
        const SizedBox(
          height: 14,
        ),
        Text(
          concern.name,
          style: bodyTextStyle,
        )
      ],
    );
  }
}
