import 'package:flutter/material.dart';

// my added imports
import './screens/getting_started_screen.dart';
import './screens/login_screen.dart';
import './screens/signup_screen.dart';

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
//
//    THIS IS WHERE static const routeName = '/login'; IS ASSOCIATED
//    TO BY USING THE FOLLOWING CODE routes:{},
//    NOW FOR THIS WE NEED TO IMPORT THE PACKAGE TO ROUTE TO
//
      routes: {
        LoginScreen.routeName: (ctx) => LoginScreen(),
        SignupScreen.routeName: (ctx) => SignupScreen(),
      },
    );
  }
}
