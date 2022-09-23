// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'new_meeting_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewMeetingModel {
  MeetingModel get meeting => throw _privateConstructorUsedError;
  ConcernModel get concern => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewMeetingModelCopyWith<NewMeetingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewMeetingModelCopyWith<$Res> {
  factory $NewMeetingModelCopyWith(
          NewMeetingModel value, $Res Function(NewMeetingModel) then) =
      _$NewMeetingModelCopyWithImpl<$Res>;
  $Res call({MeetingModel meeting, ConcernModel concern});

  $MeetingModelCopyWith<$Res> get meeting;
  $ConcernModelCopyWith<$Res> get concern;
}

/// @nodoc
class _$NewMeetingModelCopyWithImpl<$Res>
    implements $NewMeetingModelCopyWith<$Res> {
  _$NewMeetingModelCopyWithImpl(this._value, this._then);

  final NewMeetingModel _value;
  // ignore: unused_field
  final $Res Function(NewMeetingModel) _then;

  @override
  $Res call({
    Object? meeting = freezed,
    Object? concern = freezed,
  }) {
    return _then(_value.copyWith(
      meeting: meeting == freezed
          ? _value.meeting
          : meeting // ignore: cast_nullable_to_non_nullable
              as MeetingModel,
      concern: concern == freezed
          ? _value.concern
          : concern // ignore: cast_nullable_to_non_nullable
              as ConcernModel,
    ));
  }

  @override
  $MeetingModelCopyWith<$Res> get meeting {
    return $MeetingModelCopyWith<$Res>(_value.meeting, (value) {
      return _then(_value.copyWith(meeting: value));
    });
  }

  @override
  $ConcernModelCopyWith<$Res> get concern {
    return $ConcernModelCopyWith<$Res>(_value.concern, (value) {
      return _then(_value.copyWith(concern: value));
    });
  }
}

/// @nodoc
abstract class _$$_NewMeetingModelCopyWith<$Res>
    implements $NewMeetingModelCopyWith<$Res> {
  factory _$$_NewMeetingModelCopyWith(
          _$_NewMeetingModel value, $Res Function(_$_NewMeetingModel) then) =
      __$$_NewMeetingModelCopyWithImpl<$Res>;
  @override
  $Res call({MeetingModel meeting, ConcernModel concern});

  @override
  $MeetingModelCopyWith<$Res> get meeting;
  @override
  $ConcernModelCopyWith<$Res> get concern;
}

/// @nodoc
class __$$_NewMeetingModelCopyWithImpl<$Res>
    extends _$NewMeetingModelCopyWithImpl<$Res>
    implements _$$_NewMeetingModelCopyWith<$Res> {
  __$$_NewMeetingModelCopyWithImpl(
      _$_NewMeetingModel _value, $Res Function(_$_NewMeetingModel) _then)
      : super(_value, (v) => _then(v as _$_NewMeetingModel));

  @override
  _$_NewMeetingModel get _value => super._value as _$_NewMeetingModel;

  @override
  $Res call({
    Object? meeting = freezed,
    Object? concern = freezed,
  }) {
    return _then(_$_NewMeetingModel(
      meeting: meeting == freezed
          ? _value.meeting
          : meeting // ignore: cast_nullable_to_non_nullable
              as MeetingModel,
      concern: concern == freezed
          ? _value.concern
          : concern // ignore: cast_nullable_to_non_nullable
              as ConcernModel,
    ));
  }
}

/// @nodoc

class _$_NewMeetingModel implements _NewMeetingModel {
  const _$_NewMeetingModel({required this.meeting, required this.concern});

  @override
  final MeetingModel meeting;
  @override
  final ConcernModel concern;

  @override
  String toString() {
    return 'NewMeetingModel(meeting: $meeting, concern: $concern)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewMeetingModel &&
            const DeepCollectionEquality().equals(other.meeting, meeting) &&
            const DeepCollectionEquality().equals(other.concern, concern));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(meeting),
      const DeepCollectionEquality().hash(concern));

  @JsonKey(ignore: true)
  @override
  _$$_NewMeetingModelCopyWith<_$_NewMeetingModel> get copyWith =>
      __$$_NewMeetingModelCopyWithImpl<_$_NewMeetingModel>(this, _$identity);
}

abstract class _NewMeetingModel implements NewMeetingModel {
  const factory _NewMeetingModel(
      {required final MeetingModel meeting,
      required final ConcernModel concern}) = _$_NewMeetingModel;

  @override
  MeetingModel get meeting;
  @override
  ConcernModel get concern;
  @override
  @JsonKey(ignore: true)
  _$$_NewMeetingModelCopyWith<_$_NewMeetingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
