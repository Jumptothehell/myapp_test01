import 'package:flutter/material.dart';
import 'package:myapp_test01/config/palette.dart';
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
        // primaryColor: const Color(0xff32ac96),
        primarySwatch: Palette.kToDark,
        scaffoldBackgroundColor: const Color(0xff8FE1A1),
        // fontFamily: GoogleFonts.openSans().fontFamily,
        //   textTheme: const TextTheme(
        //       bodySmall: TextStyle(
        //           fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.4),
        //       bodyMedium: TextStyle(
        //           fontSize: 20, fontWeight: FontWeight.w400, letterSpacing: 0.25),
        //       bodyLarge: TextStyle(
        //           fontSize: 24, fontWeight: FontWeight.w400, letterSpacing: 0.5),
        //       labelSmall: TextStyle(
        //           fontSize: 16, fontWeight: FontWeight.w500, letterSpacing: 0.5),
        //       labelMedium: TextStyle(
        //           fontSize: 16, fontWeight: FontWeight.w500, letterSpacing: 0.5),
        //       labelLarge: TextStyle(
        //           fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.1),
        //       titleSmall: TextStyle(
        //           fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.1),
        //       titleMedium: TextStyle(
        //           fontSize: 24, fontWeight: FontWeight.w500, letterSpacing: 0.15),
        //       titleLarge: TextStyle(
        //           fontSize: 28, fontWeight: FontWeight.w400, letterSpacing: 0),
        //       headlineSmall: TextStyle(
        //           fontSize: 32, fontWeight: FontWeight.w400, letterSpacing: 0),
        //       headlineMedium: TextStyle(
        //           fontSize: 36, fontWeight: FontWeight.w400, letterSpacing: 0),
        //       headlineLarge: TextStyle(
        //           fontSize: 40, fontWeight: FontWeight.w400, letterSpacing: 0),
        //       displaySmall: TextStyle(
        //           fontSize: 44, fontWeight: FontWeight.w400, letterSpacing: 0),
        //       displayMedium: TextStyle(
        //           fontSize: 52, fontWeight: FontWeight.w400, letterSpacing: 0),
        //       displayLarge: TextStyle(
        //           fontSize: 64, fontWeight: FontWeight.w400, letterSpacing: 0)),
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
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.chevron_left),
          color: Colors.black,
        ),
        title: Container(
          margin: const EdgeInsets.only(top: 6.0),
          child: Image.asset(
            'assets/img/Logo.png',
            fit: BoxFit.contain,
            scale: 8,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            margin:
                const EdgeInsets.only(left: 20, right: 20, top: 50, bottom: 20),
            color: Colors.white,
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Card(
              margin: const EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              color: const Color(0xff387AC4),
              child: SizedBox(
                width: 200,
                height: 50,
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  // mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text(
                      "โครงการของคุณ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(top: 90, left: 40, right: 40, bottom: 20),
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Card(
                    child: ListTile(
                  leading: const Icon(
                    Icons.location_pin,
                    color: Colors.red,
                    size: 30,
                  ),
                  title: Text("ชื่อโครงการ $index"),
                  // subtitle: selectedIndex == index
                  //     ? const Text("ปิดโครงการ")
                  //     : null),
                ));
              },
              // children: const <Widget>[
              //   Card(
              //     child: ListTile(
              //       leading: Icon(
              //         Icons.location_pin,
              //         color: Colors.red,
              //         size: 30,
              //       ),
              //       title: Text("ชื่อโครงการ 1"),
              //       trailing: Icon(Icons.more_vert),
              //     ),
              //   ),
              //   Card(
              //     child: ListTile(
              //       leading:
              //           Icon(Icons.location_pin, color: Colors.red, size: 30),
              //       title: Text("ชื่อโครงการ 2"),
              //       // subtitle: notSho,
              //       trailing: Icon(Icons.more_vert),
              //     ),
              //   ),
              //   Card(
              //     child: ListTile(
              //       leading:
              //           Icon(Icons.location_pin, color: Colors.red, size: 30),
              //       title: Text("ชื่อโครงการ 3"),
              //       subtitle: Text("ปิดโครงการ"),
              //       trailing: Icon(Icons.more_vert),
              //     ),
              //   )
              // ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
