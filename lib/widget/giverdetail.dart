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
    final args = ModalRoute.of(context)!.settings.arguments as int;

    return Scaffold(
      appBar: topAppBar(context, const ProjectGiver()),
      body: scrollWidget(content(context, args), "รายละเอียดผู้ให้", 750),
    );
  }
}

Container content(BuildContext context, args) {
  return Container(
    margin: const EdgeInsets.only(top: 90, left: 40, right: 40, bottom: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Row(children: [
              const Text(
                "ชื่อตัวแทนผู้บริจาค : ",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                "ผู้ให้ $args",
                style: const TextStyle(
                    fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ])),
        Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Row(children: const [
              Text(
                "เบอร์โทรติดต่อ : ",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                "02-xxx-xxxx",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ])),
        Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                "สิ่งของที่ต้องการบริจาค : ",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Container(
                margin: const EdgeInsets.only(left: 6),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        "- ข้าวสาร",
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "- น้ำดื่ม",
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "- หนังสือเรียน",
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                    ]),
              ),
            ])),
        Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "รูปสิ่งของที่ต้องการบริจาค : ",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Center(
                child: Image.network(
                  'https://creativetalklive.com/wp-content/uploads/2019/04/IMG_1004.png',
                  width: 500.0,
                  height: 200.0,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                "สถานที่ส่งมอบของ : ",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Container(
                margin: const EdgeInsets.only(left: 8, top: 10),
                child: const Text(
                  "ถนน_____ซอย_____",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                "เลือกวันที่ส่งมอบของ : ",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Container(
                margin: const EdgeInsets.only(left: 8, top: 10),
                child: const Text(
                  "01/02/2565",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
        Center(
          child: SizedBox(
            width: 200,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(242, 92, 5, 1),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return const ProjectGiver();
                })));
              },
              child: const Text(
                "รับมอบสำเร็จ",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        )
      ],
    ),
  );
}
