import 'package:flutter/material.dart';
import 'package:flutter_basic/page_b.dart';
import 'package:flutter_basic/user_model_new.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {PageB.routeName: (context) => PageB()},
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const ScreenTwo(),
    );
  }
}

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  UserModelNew userModelNew = UserModelNew();

  @override
  void initState() {
    userModelNew = userModelNew.copyWith(id: 1, name: 'Nguyen Van A', age: 20);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text('Flutter Basic', style: TextStyle(color: Colors.white)),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('User info:${userModelNew.toJson()}'),

                  OutlinedButton(
                    onPressed: () {
                      /// Call API
                      Map<String, dynamic> json = {
                        'id': 2,
                        'name': 'Tran Van B',
                        'age': 25,
                      };

                      UserModelNew user = UserModelNew.fromJson(json);

                      setState(() {
                        userModelNew = user;
                      });
                    },
                    child: Text('Parse json'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
