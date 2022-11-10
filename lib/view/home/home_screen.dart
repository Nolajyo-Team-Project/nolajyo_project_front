import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nolajyo_project/data/local_datasource.dart';
import 'package:nolajyo_project/res/components/base_screen.dart';
import 'package:nolajyo_project/utils/utils.dart';
import 'package:nolajyo_project/view/home/components/home_concern.dart';
import 'package:nolajyo_project/view/home/components/home_room.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: "우리 동네 HOT 모임",
      isHomeScreen: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
      child: ScrollConfiguration(
        behavior: NoScrollGlow(),
        child: Column(
          children: [
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 4,
              mainAxisSpacing: 28.h,
              crossAxisSpacing: 28.w,
              physics: const NeverScrollableScrollPhysics(),
              children: List.generate(
                homeConcernList.length,
                (index) => HomeConcern(
                  concern: homeConcernList[index],
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              height: 35.h,
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: homeMeetingList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 19.h),
                    child: HomeRoomTile(homeMeetingList[index]),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
