import 'package:ceremony/styling/bottom_nav.dart';
import 'package:ceremony/styling/styling_methods.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:ceremony/main.dart';
import 'package:ceremony/screens/hirer.dart';
import 'package:ceremony/screens/jobs.dart';
import 'package:ceremony/screens/login.dart';
import 'package:ceremony/screens/signup.dart';
import 'package:ceremony/screens/hirer.dart';
import 'package:ceremony/screens/client.dart';
import 'package:ceremony/screens/form_sign_up.dart';

// ignore: camel_case_types
class client extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: appbar('Client'),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 30),
                  color: Colors.prof_back,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://image.shutterstock.com/image-vector/client-written-onclient-on-chalkboard-600w-1113011609.jpg'),
                    radius: 90,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlatButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/descrip');
                      },
                      child: Text('Profile'),
                      color: Colors.prof_button,
                    ),
                    FlatButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/signup');
                      },
                      child: Text('Projects'),
                      color: Colors.prof_button,
                    ),
                    SmoothStarRating(),
                  ],
                ),
                SizedBox(height: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'NAME',
                      style: TextStyle(
                        color: Colors.amberAccent,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 6,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Client',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 6,
                        fontSize: 40,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Swag Level',
                      style: TextStyle(
                        color: Colors.amberAccent,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 6,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Pro',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 6,
                        fontSize: 40,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.email,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Haris@gmail.com',
                          style: TextStyle(
                              letterSpacing: 4,
                              fontSize: 17,
                              color: Colors.amberAccent),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
