import 'package:flutter/material.dart';
import 'package:myapp_test01/buildcall.dart';
import 'package:myapp_test01/config/palette.dart';
import 'package:myapp_test01/widget/projectgiver.dart';
import 'package:myapp_test01/widget/projectdetail.dart';

class YourProject extends StatelessWidget {
  const YourProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topAppBar(),
      body: basicBody(content(context)),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 15.0, right: 15.0),
        child: FloatingActionButton(
          foregroundColor: Colors.black,
          backgroundColor: Palette.kToDark,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const ProjectDetail();
            }));
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

Container content(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(top: 90, left: 40, right: 40, bottom: 20),
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
                  title: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const ProjectGiver();
                        },
                      ));
                    },
                    child: Text("ชื่อโครงการ $index"),
                  ),
                  trailing: InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: const Text('ALEART'),
                                content: const Text(
                                    'คุณต้องการปิดโครงการนี้ใช่หรือไม่ ?'),
                                actions: [
                                  TextButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: const Text('CANCEL')),
                                  TextButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: const Text('OK'))
                                ],
                              ));
                    },
                    child: const Text(
                      "ปิดโครงการ",
                      style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline),
                    ),
                  )
                  // subtitle: selectedIndex == index
                  //     ? const Text("ปิดโครงการ")
                  //     : null),
                  ));
        }),
  );
}
