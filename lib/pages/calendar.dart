
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});


  @override
  State<SearchScreen> createState() => _SearchScreen();
}
class _SearchScreen extends State<SearchScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: ElevatedButton(
          child: Text('Go to camer'),
          onPressed: () {
            Navigator.pushNamed(context, 'calendar');
          },
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Take a photo',
        child: const Icon(Icons.photo_camera_outlined),
      ),
    );
  }
}
