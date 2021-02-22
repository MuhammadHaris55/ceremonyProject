import 'package:ceremony/styling/styling_methods.dart';
import 'package:flutter/material.dart';

class chatlist extends StatefulWidget {
  @override
  _chatlistState createState() => _chatlistState();
}

class _chatlistState extends State<chatlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar('Chats'),
      backgroundColor: Colors.scaffoldBack,
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            RaisedButton(
              onPressed: () {},
              // child: Row(
              //   children: <Widget>[
              //     Text('jhkf'),
              //   ],
              // ),
              child: ListTile(
                leading: Icon(Icons.account_circle),
                title: Text(
                  'Ironman',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
