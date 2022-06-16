import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'welcome_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: welcome_screen(),
      );
}
