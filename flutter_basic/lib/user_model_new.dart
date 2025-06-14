import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model_new.freezed.dart';

part 'user_model_new.g.dart';

@freezed
class UserModelNew with _$UserModelNew {
  const factory UserModelNew({
    @Default(0) int id,
    @Default('') String name,
    @Default(0) int age,
  }) = _UserModelNew;

  factory UserModelNew.fromJson(Map<String, dynamic> json) =>
      _$UserModelNewFromJson(json);
}
