// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_one_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PageOneState {
  bool get isShowLoading => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  UserModelNew get user => throw _privateConstructorUsedError;
  List<UserModelNew> get userList => throw _privateConstructorUsedError;

  /// Create a copy of PageOneState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PageOneStateCopyWith<PageOneState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageOneStateCopyWith<$Res> {
  factory $PageOneStateCopyWith(
    PageOneState value,
    $Res Function(PageOneState) then,
  ) = _$PageOneStateCopyWithImpl<$Res, PageOneState>;
  @useResult
  $Res call({
    bool isShowLoading,
    int number,
    UserModelNew user,
    List<UserModelNew> userList,
  });

  $UserModelNewCopyWith<$Res> get user;
}

/// @nodoc
class _$PageOneStateCopyWithImpl<$Res, $Val extends PageOneState>
    implements $PageOneStateCopyWith<$Res> {
  _$PageOneStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PageOneState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isShowLoading = null,
    Object? number = null,
    Object? user = null,
    Object? userList = null,
  }) {
    return _then(
      _value.copyWith(
            isShowLoading:
                null == isShowLoading
                    ? _value.isShowLoading
                    : isShowLoading // ignore: cast_nullable_to_non_nullable
                        as bool,
            number:
                null == number
                    ? _value.number
                    : number // ignore: cast_nullable_to_non_nullable
                        as int,
            user:
                null == user
                    ? _value.user
                    : user // ignore: cast_nullable_to_non_nullable
                        as UserModelNew,
            userList:
                null == userList
                    ? _value.userList
                    : userList // ignore: cast_nullable_to_non_nullable
                        as List<UserModelNew>,
          )
          as $Val,
    );
  }

  /// Create a copy of PageOneState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelNewCopyWith<$Res> get user {
    return $UserModelNewCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PageOneStateImplCopyWith<$Res>
    implements $PageOneStateCopyWith<$Res> {
  factory _$$PageOneStateImplCopyWith(
    _$PageOneStateImpl value,
    $Res Function(_$PageOneStateImpl) then,
  ) = __$$PageOneStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isShowLoading,
    int number,
    UserModelNew user,
    List<UserModelNew> userList,
  });

  @override
  $UserModelNewCopyWith<$Res> get user;
}

/// @nodoc
class __$$PageOneStateImplCopyWithImpl<$Res>
    extends _$PageOneStateCopyWithImpl<$Res, _$PageOneStateImpl>
    implements _$$PageOneStateImplCopyWith<$Res> {
  __$$PageOneStateImplCopyWithImpl(
    _$PageOneStateImpl _value,
    $Res Function(_$PageOneStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PageOneState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isShowLoading = null,
    Object? number = null,
    Object? user = null,
    Object? userList = null,
  }) {
    return _then(
      _$PageOneStateImpl(
        isShowLoading:
            null == isShowLoading
                ? _value.isShowLoading
                : isShowLoading // ignore: cast_nullable_to_non_nullable
                    as bool,
        number:
            null == number
                ? _value.number
                : number // ignore: cast_nullable_to_non_nullable
                    as int,
        user:
            null == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                    as UserModelNew,
        userList:
            null == userList
                ? _value._userList
                : userList // ignore: cast_nullable_to_non_nullable
                    as List<UserModelNew>,
      ),
    );
  }
}

/// @nodoc

class _$PageOneStateImpl implements _PageOneState {
  const _$PageOneStateImpl({
    this.isShowLoading = false,
    this.number = 0,
    this.user = const UserModelNew(),
    final List<UserModelNew> userList = const [],
  }) : _userList = userList;

  @override
  @JsonKey()
  final bool isShowLoading;
  @override
  @JsonKey()
  final int number;
  @override
  @JsonKey()
  final UserModelNew user;
  final List<UserModelNew> _userList;
  @override
  @JsonKey()
  List<UserModelNew> get userList {
    if (_userList is EqualUnmodifiableListView) return _userList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userList);
  }

  @override
  String toString() {
    return 'PageOneState(isShowLoading: $isShowLoading, number: $number, user: $user, userList: $userList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageOneStateImpl &&
            (identical(other.isShowLoading, isShowLoading) ||
                other.isShowLoading == isShowLoading) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._userList, _userList));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isShowLoading,
    number,
    user,
    const DeepCollectionEquality().hash(_userList),
  );

  /// Create a copy of PageOneState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PageOneStateImplCopyWith<_$PageOneStateImpl> get copyWith =>
      __$$PageOneStateImplCopyWithImpl<_$PageOneStateImpl>(this, _$identity);
}

abstract class _PageOneState implements PageOneState {
  const factory _PageOneState({
    final bool isShowLoading,
    final int number,
    final UserModelNew user,
    final List<UserModelNew> userList,
  }) = _$PageOneStateImpl;

  @override
  bool get isShowLoading;
  @override
  int get number;
  @override
  UserModelNew get user;
  @override
  List<UserModelNew> get userList;

  /// Create a copy of PageOneState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PageOneStateImplCopyWith<_$PageOneStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
