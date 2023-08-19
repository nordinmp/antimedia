
import 'package:flutter/material.dart';
import 'package:antimedia2/asset_library.dart';
class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});


  @override
  State<CalendarScreen> createState() => _CalendarScreen();
}
class _CalendarScreen extends State<CalendarScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HeaderBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 0), // Set the desired padding value
            child: Text(
              "Calendar - last 30 days",
              style: TextStyle(
                color: Theme.of(context).colorScheme.scrim,
                fontSize: 26,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const NavBar(indexNumber: 1,),
    );
  }
}
