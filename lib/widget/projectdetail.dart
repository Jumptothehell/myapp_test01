import 'package:flutter/material.dart';
import 'package:myapp_test01/buildcall.dart';
import 'package:myapp_test01/widget/yourproject.dart';

void main() {
  runApp(const MaterialApp(
    home: ProjectDetail(),
  ));
}

class ProjectDetail extends StatefulWidget {
  const ProjectDetail({super.key});

  @override
  State<ProjectDetail> createState() => _ProjectDetailState();
}

Container content(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(top: 90, left: 40, right: 40, bottom: 20),
    child: const Text(
      "ชื่อโครงการ :",
      style: TextStyle(fontSize: 16),
    ),
  );
}

class _ProjectDetailState extends State<ProjectDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: topAppBar(context, const YourProject()),
        // appBar: topAppBar(context, "const YourProject()" as Widget),
        body: scrollWidget(content(context), "รายละเอียดโครงการ"));
  }
}
