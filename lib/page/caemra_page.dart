import 'package:flutter/material.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
// late CameraController cameraController;

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    // final deviceRatio = size.width / size.height;
    // final xScale = cameraController.value.aspectRatio / deviceRatio;
// Modify the yScale if you are in Landscape
    // final yScale = 1.0;
    return Container(
      // child: AspectRatio(
      //   aspectRatio: deviceRatio,
      //   child: Transform(
      //     alignment: Alignment.center,
      //     transform: Matrix4.diagonal3Values(xScale, yScale, 1.0),
      //     child: CameraPreview(cameraController),
      //   ),
      // ),
      child: Text("Camera Page"),
    );
  }
}
