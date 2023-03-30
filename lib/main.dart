import 'package:flutter/material.dart';
import 'package:myapp_test01/config/palette.dart';
import 'package:myapp_test01/projectdetail.dart';
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
              margin: const EdgeInsets.only(
                  left: 20, right: 20, top: 50, bottom: 20),
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
                    mainAxisAlignment: MainAxisAlignment.center,
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
              margin: const EdgeInsets.only(
                  top: 90, left: 40, right: 40, bottom: 20),
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
                    trailing: const Text(
                      "ปิดโครงการ",
                      style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline),
                    ),
                    // subtitle: selectedIndex == index
                    //     ? const Text("ปิดโครงการ")
                    //     : null),
                  ));
                },
              ),
            ),
          ],
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 15.0, right: 15.0),
          child: FloatingActionButton(
            foregroundColor: Palette.kToDark,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ProjectDetail();
              }));
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ));
  }
}
