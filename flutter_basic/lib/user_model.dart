import 'dart:developer';

class UserModel {
  int id;
  String name;
  int age;

  UserModel({required this.id, required this.name, required this.age});

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'age': age};
  }

  UserModel fromJson(Map<String, dynamic> json) {
    return UserModel(id: json['id'], name: json['name'], age: json['age']);
  }

  void showUserInfo() {
    log('User info: id = $id, name = $name, age = $age');
  }
}
