import 'package:flutter/material.dart';

AppBar topAppBar(BuildContext context, Widget page) {
  return AppBar(
    leading: IconButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: ((context) {
          return page;
        })));
      },
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
  );
}

Stack basicBody(Container content, titlename) {
  return Stack(
    children: [
      Container(
        margin: const EdgeInsets.only(left: 20, right: 20, top: 50, bottom: 20),
        color: Colors.white,
      ),
      Container(
        alignment: Alignment.topCenter,
        child: Card(
          margin: const EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          color: const Color(0xff387AC4),
          child: SizedBox(
            width: 300,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  titlename,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
      content
    ],
  );
}
