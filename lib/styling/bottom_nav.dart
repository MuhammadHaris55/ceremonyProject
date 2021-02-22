import 'package:ceremony/screens/Job_details.dart';
import 'package:ceremony/screens/alerts.dart';
import 'package:ceremony/screens/chatapphome.dart';
import 'package:ceremony/screens/chatlist.dart';
import 'package:ceremony/screens/client.dart';
import 'package:ceremony/screens/jobs.dart';
import 'package:ceremony/screens/form_sign_up.dart';
import 'package:ceremony/screens/login.dart';
import 'package:ceremony/screens/signup.dart';
import 'package:ceremony/styling/searchBar.dart';
import 'package:flutter/material.dart';
import 'package:ceremony/main.dart';
import 'package:ceremony/screens/hirer.dart';

class bottom_nav extends StatefulWidget {
  @override
  _bottom_navState createState() => _bottom_navState();
}

class _bottom_navState extends State<bottom_nav> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // final screns = [
    //   Center(child: Text('home')),
    //   Navigator.of(context).pushNamed('/hirer'),
    //   // Center(child: Text('profile')),
    //   Center(child: Text('search')),
    //   Center(child: Text('notification')),
    // ];
    // final scren = [
    //   Navigator.of(context).pushNamed('/hirer'),
    //   Navigator.of(context).pushNamed('/client'),
    //   Navigator.of(context).pushNamed('/signup'),
    //   Navigator.of(context).pushNamed('/login'),
    // ];
    List<Widget> scren = [
      // hirer(),
      descrip(),
      job_details(),
      alerts(),
      CHATAPPHOME(),
      // chatlist(),
      // client(),
      // login(),
      // onPressed: () {
      //   showSearch(context: context, delegate: searchBar());
      // },
      // client(),
      // signup(),
      // sign(),
    ];

    return Scaffold(
      body: Container(child: scren[_currentIndex]),
      backgroundColor: Colors.scaffoldBack,
      // body: client(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.appColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            // title: Text('Home'),
            // label: 'Home',
            label: 'Jobs',
            backgroundColor: Colors.appColor,
          ),
          BottomNavigationBarItem(
            // icon: Icon(Icons.person),
            // label: 'Profile',
            icon: Icon(Icons.details_sharp),
            label: 'JobDetails',
            backgroundColor: Colors.appColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Alerts',
            backgroundColor: Colors.appColor,
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.search),
          //   label: 'Search',
          //   backgroundColor: Colors.appColor,
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_sharp),
            label: 'Chat',
            backgroundColor: Colors.appColor,
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.login),
          //   label: 'Login',
          //   backgroundColor: Colors.appColor,
          // ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            // if (index == 0) {
            //   Navigator.of(context).pushNamed('/hirer');
            // } else if (index == 1) {
            //   Navigator.of(context).pushNamed('/client');
            // } else if (index == 2) {
            //   Navigator.of(context).pushNamed('/login');
            // } else if (index == 3) {
            //   Navigator.of(context).pushNamed('/signup');
            // }
          });
        },
      ),
    );
  }
}

// fun setState(() {
// // _currentIndex = index;
// if (index == 0) {
// Navigator.of(context).pushNamed('/hirer');
// } else if (index == 1) {
// Navigator.of(context).pushNamed('/client');
// } else if (index == 2) {
// Navigator.of(context).pushNamed('/login');
// } else if (index == 3) {
// Navigator.of(context).pushNamed('/signup');
// }
// });
