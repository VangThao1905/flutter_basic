import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_basic/page_one_cubit.dart';
import 'package:flutter_basic/page_one_state.dart';
import 'package:flutter_basic/user_model_new.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

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
      builder: EasyLoading.init(),
    );
  }
}

class MyAppView extends StatefulWidget {
  const MyAppView({super.key});

  @override
  State<MyAppView> createState() => _MyAppViewState();
}

class _MyAppViewState extends State<MyAppView> {
  final PageOneCubit _pageOneCubit = PageOneCubit();

  @override
  void initState() {
    _pageOneCubit.init();
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
              child: BlocConsumer<PageOneCubit, PageOneState>(
                bloc: _pageOneCubit,
                listener: (context, state) {
                  if (state.isShowLoading) {
                    EasyLoading.show();
                  } else {
                    EasyLoading.dismiss();
                  }
                },
                listenWhen: (pre, cur) => true,
                buildWhen: (pre, cur) => true,
                builder: (context, state) {
                  log('List length:${state.userList.length}');
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 300,
                        child: ListView.separated(
                          itemBuilder: (context, index) {
                            UserModelNew user = state.userList[index];
                            return ListTile(
                              title: Text(user.name),
                              subtitle: Text('${user.id} - ${user.age}'),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return Divider();
                          },
                          itemCount: state.userList.length,
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {
                          _pageOneCubit.loadUsers();
                        },
                        child: Text('Load data'),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
