// TODO put home her ind

import 'package:flutter/material.dart';
import 'package:antimedia/asset_library.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderBar(HeaderTitle: 'header'),
      body:Center(
        child: Column(
          children: [
            Stories(date: DateTime(2023, 9, 18))
          ],
        ),
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}
