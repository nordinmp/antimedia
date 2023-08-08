// TODO put home her ind

import 'package:flutter/material.dart';
import 'package:antimedia/asset_library.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> storiesData = [
      {
        'imagePath': "day63-school-bag.png",
        'title': "Gymnasium ",
        'startDate': DateTime(2022, 8, 8),
        'endDate': DateTime(2025, 6, 20),
        'actionClips': ["School", "Everyday"]
      },
      {
        'imagePath': "day54-building.png",
        'title': "Berlin Tour",
        'startDate': DateTime(2023, 7, 8),
        'endDate': DateTime(2023, 7, 22),
        'actionClips': ["Travel", "Adventure"]
      },
      // Add more story data entries as needed
    ];

    return Scaffold(
      appBar: const HeaderBar(headerTitle: 'header'),
      body: Center(
        child: ListView.separated(
          itemCount: storiesData.length,
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 16); // Adjust the height as needed
          },
          itemBuilder: (BuildContext context, int index) {
            Map<String, dynamic> storyData = storiesData[index];
            return Stories(
              imagePath: storyData['imagePath'],
              title: storyData['title'],
              startDate: storyData['startDate'],
              endDate: storyData['endDate'],
              actionClips: storyData['actionClips'],
            );
          },
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
