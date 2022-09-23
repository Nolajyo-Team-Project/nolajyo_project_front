import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_meeting_model.freezed.dart';

@freezed
class HomeMeeting with _$HomeMeeting {
  const factory HomeMeeting({
    required String title,
    required String region,
    required String image,
    required int people,
  }) = _HomeMeeting;
}
