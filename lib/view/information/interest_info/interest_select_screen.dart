import 'package:flutter/material.dart';
import 'package:nolajyo_project/data/local_datasource.dart';
import 'package:nolajyo_project/res/components/base_screen.dart';
import 'package:nolajyo_project/res/constants/font_data.dart';
import 'package:nolajyo_project/view/information/interest_info/selection_tile.dart';

class InterestSelectScreen extends StatefulWidget {
  const InterestSelectScreen({super.key});

  @override
  State<InterestSelectScreen> createState() => _InterestSelectScreenState();
}

class _InterestSelectScreenState extends State<InterestSelectScreen> {
  void select() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("관심사를 알려주세요", style: titleTextStyle),
          const SizedBox(
            height: 37,
          ),
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 8,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 25,
              mainAxisSpacing: 0,
              crossAxisCount: 2,
              childAspectRatio: 1.1 / 1,
            ),
            itemBuilder: (context, index) => SelectionTile(
              concernList[index],
              selected: true,
            ),
          ),
          const Spacer(),
          SizedBox(
            width: MediaQuery.of(context).size.width - 60,
            height: 70,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(19),
                ),
              ),
              onPressed: () {},
              child: Text(
                "완료",
                style: buttonTextStyle.copyWith(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
