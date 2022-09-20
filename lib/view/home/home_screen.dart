import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nolajyo_project/data/local_datasource.dart';
import 'package:nolajyo_project/res/components/base_screen.dart';
import 'package:nolajyo_project/res/constants/font_data.dart';
import 'package:nolajyo_project/view/home/components/home_concern.dart';
import 'package:nolajyo_project/view/home/components/home_room.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text("우리 동네 HOT 모임", style: titleTextStyle),
                const SizedBox(
                  width: 8,
                ),
                const Spacer(),
                IconButton(
                  padding: const EdgeInsets.all(0),
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                ),
                IconButton(
                  padding: const EdgeInsets.all(0),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu,
                    size: 30,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 35.w,
            ),
            GridView.builder(
              shrinkWrap: true,
              itemCount: 8,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 28.h,
                crossAxisSpacing: 28.w,
              ),
              itemBuilder: (context, index) => HomeConcern(
                concern: homeConcernList[index],
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 35.h,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: homeMeetingList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 19.h),
                  child: HomeRoomTile(homeMeetingList[index]),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
