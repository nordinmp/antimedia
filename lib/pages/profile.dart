
import 'package:flutter/material.dart';
import '../color_schemes.g.dart';
import '../router_generator.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('Go to camer'),
        onPressed: () {
          Navigator.of(context).pushNamed('calendar');
        },
      ),
    );
  }
}