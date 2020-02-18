import 'package:flutter/material.dart';

// my added imports
import './screens/getting_started_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
//      this is where to remove the Debug banner
      debugShowCheckedModeBanner: false,
//      this is where to remove the Debug banner
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GettingStartedScreen(),
    );
  }
}
