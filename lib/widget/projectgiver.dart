import 'package:flutter/material.dart';
import 'package:myapp_test01/buildcall.dart';

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
  return Container();
}

class _ProjectGiverState extends State<ProjectGiver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: topAppBar(),
        body: Scrollbar(child: basicBody((content(context)))));
  }
}
