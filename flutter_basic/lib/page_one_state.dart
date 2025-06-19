import 'package:flutter_basic/user_model_new.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_one_state.freezed.dart';

@freezed
class PageOneState with _$PageOneState {
  const factory PageOneState({
    @Default(false) bool isShowLoading,
    @Default(0) int number,
    @Default(UserModelNew()) UserModelNew user,
    @Default([]) List<UserModelNew> userList,
  }) = _PageOneState;
}
