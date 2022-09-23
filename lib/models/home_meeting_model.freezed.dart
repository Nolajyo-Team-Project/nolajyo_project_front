// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_meeting_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeMeeting {
  String get title => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  int get people => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeMeetingCopyWith<HomeMeeting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeMeetingCopyWith<$Res> {
  factory $HomeMeetingCopyWith(
          HomeMeeting value, $Res Function(HomeMeeting) then) =
      _$HomeMeetingCopyWithImpl<$Res>;
  $Res call({String title, String region, String image, int people});
}

/// @nodoc
class _$HomeMeetingCopyWithImpl<$Res> implements $HomeMeetingCopyWith<$Res> {
  _$HomeMeetingCopyWithImpl(this._value, this._then);

  final HomeMeeting _value;
  // ignore: unused_field
  final $Res Function(HomeMeeting) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? region = freezed,
    Object? image = freezed,
    Object? people = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      region: region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      people: people == freezed
          ? _value.people
          : people // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_HomeMeetingCopyWith<$Res>
    implements $HomeMeetingCopyWith<$Res> {
  factory _$$_HomeMeetingCopyWith(
          _$_HomeMeeting value, $Res Function(_$_HomeMeeting) then) =
      __$$_HomeMeetingCopyWithImpl<$Res>;
  @override
  $Res call({String title, String region, String image, int people});
}

/// @nodoc
class __$$_HomeMeetingCopyWithImpl<$Res> extends _$HomeMeetingCopyWithImpl<$Res>
    implements _$$_HomeMeetingCopyWith<$Res> {
  __$$_HomeMeetingCopyWithImpl(
      _$_HomeMeeting _value, $Res Function(_$_HomeMeeting) _then)
      : super(_value, (v) => _then(v as _$_HomeMeeting));

  @override
  _$_HomeMeeting get _value => super._value as _$_HomeMeeting;

  @override
  $Res call({
    Object? title = freezed,
    Object? region = freezed,
    Object? image = freezed,
    Object? people = freezed,
  }) {
    return _then(_$_HomeMeeting(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      region: region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      people: people == freezed
          ? _value.people
          : people // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_HomeMeeting implements _HomeMeeting {
  const _$_HomeMeeting(
      {required this.title,
      required this.region,
      required this.image,
      required this.people});

  @override
  final String title;
  @override
  final String region;
  @override
  final String image;
  @override
  final int people;

  @override
  String toString() {
    return 'HomeMeeting(title: $title, region: $region, image: $image, people: $people)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeMeeting &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.region, region) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.people, people));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(region),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(people));

  @JsonKey(ignore: true)
  @override
  _$$_HomeMeetingCopyWith<_$_HomeMeeting> get copyWith =>
      __$$_HomeMeetingCopyWithImpl<_$_HomeMeeting>(this, _$identity);
}

abstract class _HomeMeeting implements HomeMeeting {
  const factory _HomeMeeting(
      {required final String title,
      required final String region,
      required final String image,
      required final int people}) = _$_HomeMeeting;

  @override
  String get title;
  @override
  String get region;
  @override
  String get image;
  @override
  int get people;
  @override
  @JsonKey(ignore: true)
  _$$_HomeMeetingCopyWith<_$_HomeMeeting> get copyWith =>
      throw _privateConstructorUsedError;
}
