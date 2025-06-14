// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model_new.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserModelNew _$UserModelNewFromJson(Map<String, dynamic> json) {
  return _UserModelNew.fromJson(json);
}

/// @nodoc
mixin _$UserModelNew {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;

  /// Serializes this UserModelNew to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModelNew
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelNewCopyWith<UserModelNew> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelNewCopyWith<$Res> {
  factory $UserModelNewCopyWith(
    UserModelNew value,
    $Res Function(UserModelNew) then,
  ) = _$UserModelNewCopyWithImpl<$Res, UserModelNew>;
  @useResult
  $Res call({int id, String name, int age});
}

/// @nodoc
class _$UserModelNewCopyWithImpl<$Res, $Val extends UserModelNew>
    implements $UserModelNewCopyWith<$Res> {
  _$UserModelNewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModelNew
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null, Object? age = null}) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            age:
                null == age
                    ? _value.age
                    : age // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserModelNewImplCopyWith<$Res>
    implements $UserModelNewCopyWith<$Res> {
  factory _$$UserModelNewImplCopyWith(
    _$UserModelNewImpl value,
    $Res Function(_$UserModelNewImpl) then,
  ) = __$$UserModelNewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, int age});
}

/// @nodoc
class __$$UserModelNewImplCopyWithImpl<$Res>
    extends _$UserModelNewCopyWithImpl<$Res, _$UserModelNewImpl>
    implements _$$UserModelNewImplCopyWith<$Res> {
  __$$UserModelNewImplCopyWithImpl(
    _$UserModelNewImpl _value,
    $Res Function(_$UserModelNewImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserModelNew
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null, Object? age = null}) {
    return _then(
      _$UserModelNewImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        age:
            null == age
                ? _value.age
                : age // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelNewImpl implements _UserModelNew {
  const _$UserModelNewImpl({this.id = 0, this.name = '', this.age = 0});

  factory _$UserModelNewImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelNewImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final int age;

  @override
  String toString() {
    return 'UserModelNew(id: $id, name: $name, age: $age)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelNewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, age);

  /// Create a copy of UserModelNew
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelNewImplCopyWith<_$UserModelNewImpl> get copyWith =>
      __$$UserModelNewImplCopyWithImpl<_$UserModelNewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelNewImplToJson(this);
  }
}

abstract class _UserModelNew implements UserModelNew {
  const factory _UserModelNew({
    final int id,
    final String name,
    final int age,
  }) = _$UserModelNewImpl;

  factory _UserModelNew.fromJson(Map<String, dynamic> json) =
      _$UserModelNewImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get age;

  /// Create a copy of UserModelNew
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelNewImplCopyWith<_$UserModelNewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
