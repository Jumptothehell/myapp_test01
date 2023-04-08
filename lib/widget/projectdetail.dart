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

class _ProjectDetailState extends State<ProjectDetail> {
  bool isPost = false;
  bool isAgency = false;
  bool isLocation = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: topAppBar(context, const YourProject()),
        // appBar: topAppBar(context, "const YourProject()" as Widget),
        body: scrollWidget(content(context, isPost, isAgency, isLocation),
            "รายละเอียดโครงการ", 850));
  }

  Container content(
      BuildContext context, bool isPost, bool isAgency, bool isLocation) {
    return Container(
        margin: const EdgeInsets.only(top: 90, left: 40, right: 40, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                "ชื่อโครงการ :",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ),
            const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "กรอกชื่อโครงการ")),
            const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                "รายละเอียด :",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 100,
              child: TextField(
                  textAlignVertical: TextAlignVertical.top,
                  maxLines: null,
                  expands: true,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "กรอกรายละเอียด",
                  )),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                "สิ่งของที่ต้องการ :",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 100,
              child: TextField(
                  textAlignVertical: TextAlignVertical.top,
                  maxLines: null,
                  expands: true,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "กรอกสิ่งของที่ต้องการ",
                  )),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                "ช่องทางการบริจาค :",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ),
            CheckboxListTile(
              title: const Text("ส่งทางไปรษณีย์"),
              controlAffinity: ListTileControlAffinity.leading,
              value: isPost,
              onChanged: (bool? value) {
                setState(() {
                  isPost = value ?? false;
                });
                debugPrint("isPost: $isPost");
              },
            ),
            CheckboxListTile(
              title: const Text("ส่งที่หน่วยงาน"),
              controlAffinity: ListTileControlAffinity.leading,
              value: isPost,
              onChanged: (bool? value) {
                setState(() {
                  isPost = value ?? false;
                });
                debugPrint("isPost: $isPost");
              },
            ),
            CheckboxListTile(
              title: const Text("เข้ารับที่สถานที่ของผู้ให้"),
              controlAffinity: ListTileControlAffinity.leading,
              value: isPost,
              onChanged: (bool? value) {
                setState(() {
                  isPost = value ?? false;
                });
                debugPrint("isPost: $isPost");
              },
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                "ข้อมูลติดต่อหน่วยงาน :",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 100,
              child: TextField(
                  textAlignVertical: TextAlignVertical.top,
                  maxLines: null,
                  expands: true,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "กรอกข้อมูลติดต่อ",
                  )),
            ),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const YourProject()));
                  },
                  child: const Text(
                    "ตกลง",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ))
            // ElevatedButton(
            //   onPressed: () {},
            //   child: const Text(
            //     'ตกลง',
            //     style:
            //         TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            //   ),
            // )
          ],
        ));
  }
}
