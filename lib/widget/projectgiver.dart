import 'package:flutter/material.dart';
import 'package:myapp_test01/buildcall.dart';
import 'package:myapp_test01/widget/giverdetail.dart';
import 'package:myapp_test01/widget/yourproject.dart';

void main() {
  runApp(const MaterialApp(
    home: ProjectGiver(),
  ));
}

class ProjectGiver extends StatefulWidget {
  const ProjectGiver({super.key});

  @override
  State<ProjectGiver> createState() => _ProjectGiverState();
}

Container content(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(top: 90, left: 40, right: 40, bottom: 20),
    child: ListView.builder(
        itemCount: 5,
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GiverDetail(),
                              settings: RouteSettings(
                                arguments: index,
                              )));
                    },
                    child: Text("ผู้ให้ $index"),
                  ),
                  trailing: const InkWell(
                    child: Text(
                      "อนุมัติแล้ว",
                      style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline),
                    ),
                  )));
        }),
  );
}

class _ProjectGiverState extends State<ProjectGiver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: topAppBar(context, const YourProject()),
        // appBar: topAppBar(context, "const YourProject()" as Widget),
        body: Scrollbar(
            child: basicBody((content(context)), "ผู้ให้ในโครงการของคุณ")));
  }
}
