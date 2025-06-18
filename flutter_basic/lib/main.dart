import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyAppView(),
    );
  }
}

class MyAppView extends StatefulWidget {
  const MyAppView({super.key});

  @override
  State<MyAppView> createState() => _MyAppViewState();
}

class _MyAppViewState extends State<MyAppView> {
  XFile _file = XFile('');

  @override
  void initState() {
    super.initState();
  }

  Future<void> pickImage() async {
    final result = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (result != null) {
      setState(() {
        _file = result;
      });
    }
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
                  Image.asset('assets/images/img_flutter.png'),
                  SvgPicture.asset(
                    'assets/icons/ic_bird.svg',
                    width: 100,
                    height: 100,
                  ),

                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMXGTLRjhi5Z8LdEFgaFNyR82Pn8wKmdC4Xw&s',
                    // width: MediaQuery.of(context).size.width,
                    // height: 200,
                  ),
                  if (_file.path.isNotEmpty) ...{
                    Image.file(File(_file.path), width: 200, height: 200),
                  },

                  OutlinedButton(
                    onPressed: () async {
                      await pickImage();
                    },
                    child: Text('Pick image'),
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
