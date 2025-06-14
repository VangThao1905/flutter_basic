import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic/page_a.dart';
import 'package:flutter_basic/page_b.dart';
import 'package:flutter_basic/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  int number = 0;
  String str = "";
  bool isStudent = false;
  double point = 0.0;

  @override
  void initState() {
    super.initState();
  }

  Future<void> saveData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    /// Luu du lieu
    prefs.setInt('number', number);
    prefs.setString('str', str);
  }

  Future<void> getData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    ///Doc du lieu ra
    int? numberTemp = prefs.getInt('number') ?? 0;
    String? getStr = prefs.getString('str') ?? '';
    log('getData:$numberTemp');
    setState(() {
      number = numberTemp;
      str = getStr;
    });
  }

  void incrementNumber() {
    setState(() {
      number++;
      str += 'Xin chao';
    });
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
                  SizedBox(height: 32),
                  Text('Number:$number', style: TextStyle(fontSize: 36)),
                  Text('Str:$str', style: TextStyle(fontSize: 20)),
                  Text('isStudent:$isStudent'),
                  Text('Point:$point'),
                  Row(
                    children: [
                      OutlinedButton(
                        onPressed: incrementNumber,
                        child: Text('Increment number'),
                      ),
                      OutlinedButton(
                        onPressed: () async {
                          await saveData();
                        },
                        child: Text('Save'),
                      ),
                      OutlinedButton(
                        onPressed: () async {
                          await getData();
                        },
                        child: Text('Load data'),
                      ),
                    ],
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
