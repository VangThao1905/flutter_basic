import 'package:flutter/material.dart';

class PageB extends StatefulWidget {
  const PageB({super.key});

  static const routeName = '/pageB';

  @override
  State<PageB> createState() => _PageBState();
}

class _PageBState extends State<PageB> {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_rounded),
        ),
        title: Text('Page B'),
      ),
      body: Center(child: Column(children: [Text('Result:${args['id']}')])),
    );
  }
}
