import 'package:ceremony/styling/styling_methods.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
// For Dropdown
  String _user = 'Hirer';
  List _userlist = ['Hirer', 'Client'];

  TextEditingController tctrol = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: appbar('Sign Up'),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  DropdownButton(
                    hint: Text('Select User Type'),
                    value: _user,
                    onChanged: (value) {
                      setState(() {
                        _user = value;
                      });
                    },
                    items: _userlist.map((value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 5),
                  TextField(
                    controller: tctrol,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 5),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Name',
                    ),
                  ),
                  SizedBox(height: 5),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FlatButton(
                        onPressed: () {
                          if (_user == 'Hirer') {
                            Navigator.of(context).pushNamed('/hirer');
                          } else
                            Navigator.of(context).pushNamed('/client');
                        },
                        child: Text('Submit'),
                        color: Colors.sub_button,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Have an account?'),
                      FlatButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          Navigator.of(context).pushNamed('/login');
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.green,
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
      ),
    );
  }
}
