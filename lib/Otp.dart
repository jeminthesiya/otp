import 'dart:math';

import 'package:flutter/material.dart';

class OTP extends StatefulWidget {
  const OTP({Key? key}) : super(key: key);

  @override
  State<OTP> createState() => _HomeState();
}

class _HomeState extends State<OTP> {
  List l1 = [];
  List l2 = [];
  int i = 0, n = 0, b = 0;
  TextEditingController txtno = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
            title: Text("OTP GENERATOR", style: TextStyle(fontSize: 25)),
            centerTitle: true,
            backgroundColor: Colors.red.shade300),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red.shade100,
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: TextField(
                      controller: txtno,
                      decoration: InputDecoration(
                        hintText: "Enter the no",
                        hintStyle: TextStyle(color: Colors.red),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  String a = txtno.text;
                  n = int.parse(a);
                  l2.clear();
                  l1.clear();
                  setState(() {
                    var rnd = Random();
                    for (i = 0; i < n; i++) {
                      b = rnd.nextInt(9);
                      l2.add(b);
                    }
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: 125,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.red.shade300,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.red.shade700, width: 2),
                    ),
                    child: Text("Creat",
                        style: TextStyle(color: Colors.white, fontSize: 25)),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: l2
                      .asMap()
                      .entries
                      .map((e) => Padding(
                            padding: const EdgeInsets.all(2),
                            child: Container(
                              height: 30,
                              width: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.red.shade300,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Text(
                                "${l2[e.key]}",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                            ),
                          ))
                      .toList(),
                ),
              ),
              InkWell(
                onTap: () {
                  String a = txtno.text;
                  n = int.parse(a);
                  l2.clear();
                  l1.clear();
                  setState(() {
                    var rnd = Random();
                    for (i = 0; i < n; i++) {
                      b = rnd.nextInt(9);
                      l2.remove(b);
                      Text("$l2");
                    }
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: 125,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.red.shade300,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.red.shade700, width: 2),
                    ),
                    child: Text("Reset",
                        style: TextStyle(color: Colors.white, fontSize: 25)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
