import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movies_app/Page/category_page.dart';
import 'package:movies_app/Page/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Movies App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const HomeApp(),
    );
  }
}
