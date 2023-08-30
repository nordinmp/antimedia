import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';


import 'package:antimedia2/asset_library.dart';

class CameraScreen extends StatefulWidget {
  final bool isTime;

  const CameraScreen({super.key, required this.isTime});

  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  XFile? _capturedImage;

  @override
  void initState() {
    super.initState();
    _initializeControllerFuture = _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    final cameras = await availableCameras();
    final camera = cameras.first;
    _controller = CameraController(
      camera,
      ResolutionPreset.medium, // Use a reasonable resolution
    );
    await _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget cameraWidget(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Center(
      child: SizedBox(
        width: screenWidth, // Set the desired width for the camera preview
        height: screenWidth, // Set the desired height for the camera preview
        child: FittedBox(
          fit: BoxFit.cover,
          alignment: Alignment.center,
          child: Container(
            width: _controller.value.previewSize!.height,
            height: _controller.value.previewSize!.height,
            child: CameraPreview(_controller),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    bool isTime = false;
    return Scaffold(
      appBar: AppBar(
      ),
      body: Column(
        children: [
          if (widget.isTime) CountdownTimerWidget(),
          FutureBuilder<void>(
            future: _initializeControllerFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return cameraWidget(context);
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
           Row(
             mainAxisAlignment: MainAxisAlignment.center ,
             children: [
               //Flash
               TextButton(
               style: TextButton.styleFrom(
                 textStyle: const TextStyle(fontSize: 50),
                 fixedSize: Size(50, 50), // Adjust the width and height as needed
               ),
               onPressed: () async {
                 try {
                   await _initializeControllerFuture;
                   final image = await _controller.takePicture();
                   setState(() {
                     _capturedImage = image;
                   });
                   if (_capturedImage != null) {
                     print('Captured image path: ${_capturedImage!.path}');
                     // Do something with the captured image
                   }
                 } catch (e) {
                   print(e);
                 }
               },
               child: Align(
                 alignment: Alignment.center,
                 child: Icon(
                   Icons.flash_on_outlined,
                   size: 24, // Adjust the size of the icon
                 ),
               ),
             ),
               const Gap(10),
               //Camera
               TextButton(
                 style: TextButton.styleFrom(
                   textStyle: const TextStyle(fontSize: 50),
                   fixedSize: Size(80, 80), // Adjust the width and height as needed
                 ),
                 onPressed: () async {
                   try {
                     await _initializeControllerFuture;
                     final image = await _controller.takePicture();
                     if (image != null) {
                       setState(() {
                         _capturedImage = image;
                       });
                       print('Captured image path: ${_capturedImage?.path}');

                       // Delay for 5 seconds
                       await Future.delayed(Duration(seconds: 2));

                       // Navigate back to '/'
                       Navigator.of(context).pushNamed('/');
                     } else {
                       print('Image capture failed');
                     }
                   } catch (e) {
                     print(e);
                   }
                 },
                 child: Align(
                   alignment: Alignment.center,
                   child: Icon(
                     Icons.radio_button_off_outlined,
                     size: 60, // Adjust the size of the icon
                   ),
                 ),
               ),
               const Gap(10),
               //Switch Camera
               TextButton(
                   style: TextButton.styleFrom(
                     textStyle: const TextStyle(fontSize: 50),
                     fixedSize: Size(50, 50), // Adjust the width and height as needed
                   ),
                   onPressed: () async {
                     try {
                       await _initializeControllerFuture;
                       final image = await _controller.takePicture();
                       setState(() {
                         _capturedImage = image;
                       });
                       if (_capturedImage != null) {
                         print('Captured image path: ${_capturedImage!.path}');
                         // Do something with the captured image
                       }
                     } catch (e) {
                       print(e);
                     }
                   },
                   child: Align(
                     alignment: Alignment.center,
                     child: Icon(
                       Icons.flip_camera_android_outlined,
                       size: 24, // Adjust the size of the icon
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
