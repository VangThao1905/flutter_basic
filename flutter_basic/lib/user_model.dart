import 'dart:developer';

class UserModel{
  int id;
  String name;
  int age;

  UserModel(this.id,this.name, this.age);

  void showUserInfo(){
    log('User info: id = $id, name = $name, age = $age');
  }
  // fix lints
}