
import 'package:flutter/material.dart';


class CameraScreen extends StatelessWidget {
  const CameraScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Center(
      child: ElevatedButton(
        child: Text('Take Picture'),
        onPressed: () {
          Navigator.of(context).pushNamed('profile');
        },
      ),
    );
  }
}