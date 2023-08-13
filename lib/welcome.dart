import 'dart:js';
import 'package:arapp/result.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:arapp/base.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

import 'test.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<WelcomePage> {
  void change() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              alignment: Alignment.center,
              child: const Text(
                "WELCOME TO AR SHOPPING",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              alignment: Alignment.center,
              child: const Text(
                "and",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              alignment: Alignment.center,
              child: const Text(
                "Experience the reality",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              alignment: Alignment.center,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(50, 50),
                    shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    shadowColor: Colors.green,
                    elevation: 10,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyHomePage(
                                  title: "AR APP",
                                )));
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        alignment: Alignment.center,
                        child: const Text(
                          "Click to Start",
                          style: TextStyle(fontSize: 40),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(10),
                        child: const Icon(
                          Icons.arrow_forward,
                          size: 20,
                        ),
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }

  void setRecognitions(List list, int h, int w) {}
}
