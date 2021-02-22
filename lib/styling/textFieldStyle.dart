import 'package:flutter/material.dart';

BoxDecoration textFeildBoxDeco() {
  return BoxDecoration(
      color: Colors.white,
      border: Border(
        top: BorderSide(
          color: Colors.appColor,
          style: BorderStyle.solid,
        ),
        bottom: BorderSide(
          color: Colors.appColor,
        ),
        right: BorderSide(
          color: Colors.appColor,
        ),
        left: BorderSide(
          color: Colors.appColor,
        ),
      ),
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.appColor,
          blurRadius: 20.0,
          // offset: Offset(0, 10),
        ),
      ]);
}

Container text_field(String text, String icon) {
  return Container(
    // padding: EdgeInsets.all(2),
    decoration: textFeildBoxDeco(),
    // BoxDecoration(
    //     color: Colors.white,
    //     border: Border(
    //       top: BorderSide(
    //         color: Colors.appColor,
    //         style: BorderStyle.solid,
    //       ),
    //       bottom: BorderSide(
    //         color: Colors.appColor,
    //       ),
    //       right: BorderSide(
    //         color: Colors.appColor,
    //       ),
    //       left: BorderSide(
    //         color: Colors.appColor,
    //       ),
    //     ),
    //     borderRadius: BorderRadius.circular(10),
    //     boxShadow: [
    //       BoxShadow(
    //         color: Colors.appColor,
    //         blurRadius: 20.0,
    //         // offset: Offset(0, 10),
    //       ),
    //     ]),
    child: Column(
      children: <Widget>[
        Container(
          // padding: EdgeInsets.all(2.0),
          decoration: BoxDecoration(),
          child: ListTile(
            leading: (() {
              if (icon == 'email') {
                return Icon(Icons.email);
              } else if (icon == 'name') {
                return Icon(Icons.person);
              } else if (icon == 'password') {
                return Icon(Icons.security_outlined);
              }
            }()),
            focusColor: Colors.appColor,
            title: TextField(
              // obscureText: () => if(obscure == t){},
              decoration: InputDecoration(
                focusColor: Colors.appColor,
                border: InputBorder.none,
                // border: OutlineInputBorder(),
                // labelText: text,
                hintText: text,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
