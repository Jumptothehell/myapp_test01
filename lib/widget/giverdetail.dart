import 'package:flutter/material.dart';
import 'package:myapp_test01/buildcall.dart';
import 'package:myapp_test01/widget/projectgiver.dart';

class GiverDetail extends StatefulWidget {
  const GiverDetail({super.key});

  @override
  State<GiverDetail> createState() => _GiverDetailState();
}

class _GiverDetailState extends State<GiverDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: topAppBar(context, const ProjectGiver()),
        body: Scrollbar(
            child: basicBody((content(context)), "รายละเอียดผู้ให้")));
  }
}

Container content(BuildContext context) {
  return Container();
}
