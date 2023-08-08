// TODO put home her ind

import 'package:flutter/material.dart';
import 'package:antimedia/asset_library.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HeaderBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const <Widget>[
            Stories()
          ],
        ),
      ),
      bottomNavigationBar: const NavBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Take a photo',
        child: const Icon(Icons.photo_camera_outlined),
      ),
    );
  }
}
