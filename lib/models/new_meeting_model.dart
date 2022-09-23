import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nolajyo_project/models/concern_model.dart';
import 'package:nolajyo_project/models/home_meeting_model.dart';

part 'new_meeting_model.freezed.dart';

@freezed
class NewMeetingModel with _$NewMeetingModel {
  const factory NewMeetingModel({
    required MeetingModel meeting,
    required ConcernModel concern,
  }) = _NewMeetingModel;
}
