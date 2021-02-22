import 'package:ceremony/screens/alerts.dart';
import 'package:ceremony/screens/chatlist.dart';
import 'package:ceremony/screens/jobs.dart';
import 'package:flutter/material.dart';
import 'package:ceremony/screens/login.dart';
import 'package:ceremony/screens/signup.dart';
import 'package:ceremony/screens/hirer.dart';
import 'package:ceremony/screens/client.dart';
import 'package:ceremony/screens/form_sign_up.dart';
import 'package:ceremony/screens/Job_details.dart';
import 'styling/bottom_nav.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: '/client',
      // initialRoute: '/jobdetails',
      // initialRoute: '/bottom_nav',
      initialRoute: '/login',
      // initialRoute: '/sign',
      routes: {
        '/bottom_nav': (_) => bottom_nav(),
        '/login': (_) => login(),
        // login.log_route: (_) => login(),
        '/signup': (_) => signup(),
        '/hirer': (_) => hirer(),
        '/client': (_) => client(),
        '/descrip': (_) => descrip(),
        '/sign': (_) => sign(),
        '/jobdetails': (_) => job_details(),
        '/alerts': (_) => alerts(),
        '/chatlist': (_) => chatlist(),
      },
    );
  }
}
