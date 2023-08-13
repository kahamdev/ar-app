import 'package:flutter/material.dart';
import 'package:arapp/test.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void change() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.camera_alt),
            tooltip: 'open camera',
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const MyWidget())));
            },
          )
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        reverse: true,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 500,
                height: 300,
                color: Colors.white,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  elevation: 10,
                  shadowColor: Colors.grey,
                  margin: const EdgeInsets.all(12),
                  child: Image.asset(
                    "assets/image1.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: 500,
                height: 300,
                color: Colors.white,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  elevation: 10,
                  shadowColor: Colors.grey,
                  margin: const EdgeInsets.all(12),
                  child: Image.asset(
                    "assets/image2.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: 500,
                height: 300,
                color: Colors.white,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  elevation: 10,
                  shadowColor: Colors.grey,
                  margin: const EdgeInsets.all(12),
                  child: Image.asset(
                    "assets/image3.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: 500,
                height: 300,
                color: Colors.white,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  elevation: 10,
                  shadowColor: Colors.grey,
                  margin: const EdgeInsets.all(12),
                  child: Image.asset(
                    "assets/image5.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: 500,
                height: 300,
                color: Colors.white,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  elevation: 10,
                  shadowColor: Colors.grey,
                  margin: const EdgeInsets.all(12),
                  child: Image.asset(
                    "assets/image6.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: 500,
                height: 300,
                color: Colors.white,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  elevation: 10,
                  shadowColor: Colors.grey,
                  margin: const EdgeInsets.all(12),
                  child: Image.asset(
                    "assets/image7.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
