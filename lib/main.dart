import 'package:flutter/material.dart';
import 'color_schemes.g.dart';
import 'router_generator.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key,});

  @override
  Widget build(BuildContext context) {
    //FirebaseDatabase database = FirebaseDatabase.instance;
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: lightColorScheme,
          useMaterial3: true,
        ),
        initialRoute: '/',
        onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
