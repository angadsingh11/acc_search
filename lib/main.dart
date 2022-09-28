import 'dart:async';

import 'package:acc_finder/models/appConstants.dart';
import 'package:acc_finder/screens/guestHomePage.dart';
import 'package:acc_finder/screens/personalInfoPage.dart';
import 'package:acc_finder/screens/signUpPage.dart';
import 'package:acc_finder/screens/viewProfilePage.dart';
import 'package:flutter/material.dart';

import 'screens/loginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      routes: {
         LoginPage.routeName: (context) => LoginPage(),
         SignUpPage.routeName: (context) => SignUpPage(),
         GuestHomePage.routeName: (context) => GuestHomePage(),
         PersonalInfoPage.routeName: (context) => PersonalInfoPage(),
         ViewProfilePage.routeName: (context) => ViewProfilePage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {

    Timer(Duration(seconds: 2), () {
        Navigator.pushNamed(context, LoginPage.routeName);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              Icon(
                  Icons.hotel,
                  size: 80,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                    '${AppConstants.appName}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                    ),
                    textAlign: TextAlign.center,
                ),
              )
          ],
        ),
      ),
    );
  }
}
