import 'dart:developer';

import 'package:flutter_basic/page_one_state.dart';
import 'package:flutter_basic/user_model_new.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PageOneCubit extends Cubit<PageOneState> {
  PageOneCubit() : super(PageOneState());

  void init() {
    emit(state.copyWith(number: 2));
  }

  void incrementNumber() {
    log('incrementNumber:${state.number}');
    int number = state.number;
    number = number + 1;
    emit(state.copyWith(number: number));
  }

  void loadUsers() {
    emit(state.copyWith(isShowLoading: true));
    Future.delayed(Duration(seconds: 3), () {
      List<UserModelNew> users = [
        UserModelNew(id: 1, name: "Nguyen Van A", age: 26),
        UserModelNew(id: 2, name: "Nguyen Van B", age: 26),
        UserModelNew(id: 3, name: "Tran Van C", age: 10),
        UserModelNew(id: 4, name: "Dang Van A", age: 30),
      ];

      emit(state.copyWith(isShowLoading: false));

      emit(state.copyWith(userList: users));
    });
  }
}
