import 'package:flutter/material.dart';
import 'package:myapp_test01/config/palette.dart';
import 'package:myapp_test01/widget/yourproject.dart';
import 'buildcall.dart';
// import 'dart:developer' as developer;
// import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //don't show debug banner on rigt side of emulator
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Palette.kToDark,
        scaffoldBackgroundColor: const Color(0xff8FE1A1),
      ),
      home: const MyHomePage(title: 'Project'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topAppBar(),
      body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(32),
          child: ElevatedButton(
            child: const Text('youProject.dart'),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const YourProject();
                },
              ));
            },
          )),
    );
  }
}
