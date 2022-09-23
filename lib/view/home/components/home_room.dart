import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nolajyo_project/models/home_meeting_model.dart';
import 'package:nolajyo_project/res/constants/font_data.dart';

class HomeRoomTile extends StatelessWidget {
  final MeetingModel meeting;
  const HomeRoomTile(this.meeting, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 96.w,
            height: 71.h,
            child: FittedBox(fit: BoxFit.fill, child: Image.asset(meeting.image)),
          ),
          SizedBox(
            width: 16.w,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                meeting.region,
                style: bodyTextStyle,
              ),
              SizedBox(
                height: 7.h,
              ),
              Text(
                meeting.title,
                style: bodyTextStyle,
              ),
              SizedBox(
                height: 7.h,
              ),
              Text(
                '${meeting.people}명',
                style: bodyTextStyle,
              ),
            ],
          )
        ],
      ),
    );
  }
}
