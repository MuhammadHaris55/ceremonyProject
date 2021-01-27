import 'package:ceremony/styling/styling_methods.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

// ignore: camel_case_types
class hirer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: appbar('Hirer'),
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
                        'https://t4.ftcdn.net/jpg/03/51/94/55/360_F_351945551_BC3hyySbGzdGy8V5f7B6z3KeMfQarE7t.jpg'),
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
                      'Haris',
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
