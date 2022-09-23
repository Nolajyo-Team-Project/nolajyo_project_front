// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'concern_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Concern {
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConcernCopyWith<Concern> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConcernCopyWith<$Res> {
  factory $ConcernCopyWith(Concern value, $Res Function(Concern) then) =
      _$ConcernCopyWithImpl<$Res>;
  $Res call({String name, String image});
}

/// @nodoc
class _$ConcernCopyWithImpl<$Res> implements $ConcernCopyWith<$Res> {
  _$ConcernCopyWithImpl(this._value, this._then);

  final Concern _value;
  // ignore: unused_field
  final $Res Function(Concern) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ConcernCopyWith<$Res> implements $ConcernCopyWith<$Res> {
  factory _$$_ConcernCopyWith(
          _$_Concern value, $Res Function(_$_Concern) then) =
      __$$_ConcernCopyWithImpl<$Res>;
  @override
  $Res call({String name, String image});
}

/// @nodoc
class __$$_ConcernCopyWithImpl<$Res> extends _$ConcernCopyWithImpl<$Res>
    implements _$$_ConcernCopyWith<$Res> {
  __$$_ConcernCopyWithImpl(_$_Concern _value, $Res Function(_$_Concern) _then)
      : super(_value, (v) => _then(v as _$_Concern));

  @override
  _$_Concern get _value => super._value as _$_Concern;

  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_Concern(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Concern implements _Concern {
  const _$_Concern({required this.name, required this.image});

  @override
  final String name;
  @override
  final String image;

  @override
  String toString() {
    return 'Concern(name: $name, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Concern &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$$_ConcernCopyWith<_$_Concern> get copyWith =>
      __$$_ConcernCopyWithImpl<_$_Concern>(this, _$identity);
}

abstract class _Concern implements Concern {
  const factory _Concern(
      {required final String name, required final String image}) = _$_Concern;

  @override
  String get name;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$_ConcernCopyWith<_$_Concern> get copyWith =>
      throw _privateConstructorUsedError;
}
