import 'package:flutter/material.dart';
import 'package:ceremony/styling/styling_methods.dart';
import 'package:ceremony/styling/textFieldStyle.dart';

// ignore: camel_case_types
class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  static const log_route = '/login';

  String _user = 'Hirer';
  List _userlist = ['Hirer', 'Client'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: appbar('Login'),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 10),
                Container(
                  // child: CircleAvatar(
                  height: 220,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'images/logo.jpeg',
                      ),
                    ),
                  ),
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 2, horizontal: 15),
                      // decoration: BoxDecoration(),
                      decoration: textFeildBoxDeco(),
                      child: Center(
                        child: DropdownButton(
                          isExpanded: true,
                          hint: Text(
                            'Select User Type',
                            textAlign: TextAlign.center,
                          ),
                          value: _user,
                          onChanged: (value) {
                            setState(() {
                              _user = value;
                            });
                          },
                          items: _userlist.map((value) {
                            return DropdownMenuItem(
                              value: value,
                              child: Text(
                                value,
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 5),
                text_field('Enter Email', 'email'),
                SizedBox(height: 5),
                text_field('Enter Password', 'password'),
                SizedBox(height: 5),
                button('Submit', '$_user'),
                // SizedBox(height: 5),
                // Container(
                //   height: 58,
                //   decoration: textFeildBoxDeco(),
                //   child: RaisedButton(
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(10.0),
                //     ),
                //     // borderRadius: BorderRadius.all(Radius.circular(10.0))),
                //     color: Colors.appColor,
                //     padding:
                //         EdgeInsets.symmetric(horizontal: 133, vertical: 15),
                //     child: Text(
                //       'text',
                //       style: TextStyle(
                //         color: Colors.white,
                //         fontWeight: FontWeight.bold,
                //       ),
                //     ),
                //     onPressed: () {
                //       if (_user == 'Hirer') {
                //         Navigator.of(context).pushNamed('/hirer');
                //       } else
                //         Navigator.of(context).pushNamed('/client');
                //     },
                //   ),
                // ),

                // TextField(
                //   obscureText: true,
                //   decoration: InputDecoration(
                //     border: OutlineInputBorder(),
                //     labelText: 'Email',
                //   ),
                //   keyboardType: TextInputType.emailAddress,
                // ),
                // SizedBox(height: 5),
                // TextField(
                //   obscureText: true,
                //   decoration: InputDecoration(
                //     border: OutlineInputBorder(),
                //     labelText: 'Password',
                //   ),
                // ),

                // Row(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   children: [
                //     FlatButton(
                //       onPressed: () {
                //         if (_user == 'Hirer') {
                //           Navigator.of(context).pushNamed('/hirer');
                //         } else
                //           Navigator.of(context).pushNamed('/client');
                //       },
                //       child: Text('Submit'),
                //       color: Colors.sub_button,
                //     ),
                //   ],
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // Text('New to Sarmony?'),
                    FlatButton(
                      // padding: EdgeInsets.only(left: 0),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/signup');
                      },
                      child: Text(
                        'New to Sarmony? SignUp',
                        style: TextStyle(
                          color: Colors.appColor,
                        ),
                      ),
                      // color: Colors.green,
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
