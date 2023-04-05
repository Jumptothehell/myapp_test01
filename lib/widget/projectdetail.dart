import 'package:flutter/material.dart';
import 'package:myapp_test01/buildcall.dart';

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
  return Container();
}

class _ProjectDetailState extends State<ProjectDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: topAppBar(),
        body: Scrollbar(child: basicBody((content(context)))));
  }
}