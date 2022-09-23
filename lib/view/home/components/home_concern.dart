import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nolajyo_project/models/concern_model.dart';

class HomeConcern extends StatelessWidget {
  final ConcernModel concern;
  final VoidCallback onPressed;
  const HomeConcern({required this.concern, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashFactory: NoSplash.splashFactory,
      onTap: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(concern.image),
          SizedBox(
            height: 8.h,
          ),
          Text(concern.name)
        ],
      ),
    );
  }
}
