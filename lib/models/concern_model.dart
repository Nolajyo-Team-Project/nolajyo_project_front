import 'package:freezed_annotation/freezed_annotation.dart';

part 'concern_model.freezed.dart';

@freezed
class Concern with _$Concern {
  const factory Concern({
    required String name,
    required String image,
  }) = _Concern;
}

