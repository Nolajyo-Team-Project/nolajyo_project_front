import 'package:flutter/material.dart';
import 'package:nolajyo_project/data/local_datasource.dart';
import 'package:nolajyo_project/res/components/base_screen.dart';
import 'package:nolajyo_project/res/constants/constants.dart';
import 'package:nolajyo_project/view/information/interest_info/selection_tile.dart';

class InterestSelectScreen extends StatelessWidget {
  const InterestSelectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("관심사를 알려주세요", style: titleTextStyle),
            const SizedBox(
              height: 37,
            ),
            GridView.builder(
              shrinkWrap: true,
              itemCount: 8,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) => SelectionTile(
                concern: concernList[index],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
