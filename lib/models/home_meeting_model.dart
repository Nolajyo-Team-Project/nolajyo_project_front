import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_meeting_model.freezed.dart';

@freezed
class MeetingModel with _$MeetingModel {
  const factory MeetingModel({
    required String title,
    required String region,
    required String image,
    required int people,
  }) = _MeetingModel;
}
