import 'package:arapp/main.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:tflite/tflite.dart';

class Detection extends StatefulWidget {
  const Detection({Key? key}) : super(key: key);

  @override
  State<Detection> createState() => _DetectionState();
}

class _DetectionState extends State<Detection> {
  // ignore: unused_local_variable
  CameraImage? cameraImage;
  CameraController? cameraController;
  void trigger() {
    // ignore: unused_element
    initCamera() {
      cameraController = CameraController(cameras![0], ResolutionPreset.medium);
      cameraController?.initialize().then((value) {
        if (!mounted) return;
        setState(() {
          cameraController?.startImageStream((image) {
            cameraImage = image;
            runModel();
          });
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: trigger,
        child: const Icon(Icons.camera),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Future loadModel() async {
    Tflite.close();
    await Tflite.loadModel(
        model: "assets/ssd_mobilenet.tflite",
        labels: "assets/ssd_mobilenet.txt");
  }

  void runModel() async {
    // ignore: unused_local_variable
    var recognitionsList = await Tflite.detectObjectOnFrame(
      bytesList: cameraImage!.planes.map((plane) {
        return plane.bytes;
      }).toList(),
      imageHeight: cameraImage!.height,
      imageWidth: cameraImage!.width,
      imageMean: 127.5,
      imageStd: 127.5,
      numResultsPerClass: 1,
      threshold: 0.4,
    );

    setState(() {
      cameraImage;
    });

    // ignore: unused_element
    List<Widget> displayBoxesAroundRecognizedObjects(Size screen) {
      if (recognitionsList == null) return [];

      double factorX = screen.width;
      double factorY = screen.height;

      Color colorPick = Colors.pink;

      return recognitionsList.map((result) {
        return Positioned(
          left: result["rect"]["x"] * factorX,
          top: result["rect"]["y"] * factorY,
          width: result["rect"]["w"] * factorX,
          height: result["rect"]["h"] * factorY,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              border: Border.all(color: Colors.pink, width: 2.0),
            ),
            child: Text(
              "${result['detectedClass']} ${(result['confidenceInClass'] * 100).toStringAsFixed(0)}%",
              style: TextStyle(
                background: Paint()..color = colorPick,
                color: Colors.black,
                fontSize: 18.0,
              ),
            ),
          ),
        );
      }).toList();
    }
  }
}
