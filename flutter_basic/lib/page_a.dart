import 'package:flutter/material.dart';

class PageA extends StatelessWidget {
  const PageA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: BackButton(), title: Text('Page A')),
      body: Center(child: Text('Page A content')),
    );
  }
}
