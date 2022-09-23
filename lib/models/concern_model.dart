import 'package:freezed_annotation/freezed_annotation.dart';

part 'concern_model.freezed.dart';

@freezed
class ConcernModel with _$ConcernModel {
  const factory ConcernModel({
    required String name,
    required String image,
  }) = _ConcernModel;
}
