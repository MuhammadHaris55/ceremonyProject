import 'package:ceremony/styling/searchBar.dart';
import 'package:ceremony/styling/styling_methods.dart';
import 'package:ceremony/styling/textFieldStyle.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

//PREVIOUS
// class Info {
//   String text;
//
//   Info({this.text});
// }

class descrip extends StatefulWidget {
  @override
  _descripState createState() => _descripState();
}

class _descripState extends State<descrip> {
  //PREVIOUS
  // List<Info> infos = [
  //   Info(text: 'Description'),
  //   Info(text: 'Description 222222'),
  //   Info(text: 'Description 3'),
  // ];
  //
  // Widget projectDescription(info) {
  //   return Card(
  //     margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
  //     child: Padding(
  //       padding: const EdgeInsets.all(12.0),
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.stretch,
  //         children: <Widget>[
  //           Text(
  //             info.text,
  //             style: TextStyle(
  //               color: Colors.pinkAccent,
  //             ),
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }

//VARIABLE AND LIST FOR DROPDOWN
  String _user = 'My Feed';
  List _userlist = ['My Feed', 'Hirer', 'Client'];

  //VARIABLES FOR CARD
  String jobTilte = 't shirt design';
  String hours = 'Less than 10 hrs/week';
  String duration = '1 to 3 months';
  String experience = 'Intermediate';
//LAST BUTTON TEXT
  String buttonText1 = 'Clothing';
  String buttonText2 = 'Sketch';
  String buttonText3 = 'development';
  String dollars = '\$0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.appColor,
        shadowColor: Colors.appColora,
        centerTitle: true,
        title: Text(
          // text,
          'Jobs',
          style: TextStyle(
            color: Colors.appbar_text,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: searchBar());
            },
          ),
        ],
      ),
      // appbar('Descrip'),
      body: SingleChildScrollView(
        child: Column(
          // children: infos.map((info) => projectDescription(info)).toList(),
          children: [
            Container(
              decoration: BoxDecoration(
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
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
//TEXT = VIEW
                  Text(
                    'View:',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),

//DROPDOWN
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    // decoration: BoxDecoration(),
                    // decoration: textFeildBoxDeco(),
                    decoration: BoxDecoration(
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
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                  ),
                ],
              ),
            ),

            SizedBox(height: 5.0),
//CARDS
            Card(
              margin: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 0.0),
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Flexible(
                            flex: 6,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                jobTilte,
                                style: TextStyle(
                                  color: Colors.appColora,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: IconButton(
                              iconSize: 30,
                              icon: Icon(
                                Icons.thumb_down_rounded,
                                color: Colors.appColora,
                              ),
                              onPressed: null,
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: IconButton(
                              iconSize: 30,
                              icon: Icon(
                                // Icons.thumb_down,
                                Icons.favorite,
                                color: Colors.appColor,
                              ),
                              // icon: CircleAvatar(
                              //   backgroundImage: NetworkImage(
                              //     // 'https://qtxasset.com/fiercebiotech/1568212087/connor-wells-534089-unsplash.jpg/connor-wells-534089-unsplash.jpg?BuQ3QN_sJxL_thkPRXvRQQ57AqHI2UBW',
                              //     'https://www.jing.fm/clipimg/detail/251-2510275_heart-for-kids.png',
                              //   ),
                              // ),
                              onPressed: null,
                            ),
                          ),
                        ],
                      ),
                    ),
//TEXT HOURLY -
                    RichText(
                      text: TextSpan(
                          text: 'Hourly ',
                          style: TextStyle(
                            // color: Colors.appColor,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              text: '- Posted 1h ago',
                              style: TextStyle(
                                // color: Colors.appColor,
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                              ),
                            )
                          ]),
                    ),
                    // Text('Hourly - Posted 1h ago', style: TextStyle(color: Colors.appColor,fontWeight: FontWeight.bold,),),

                    SizedBox(height: 30.0),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              hours,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Hours Needed",
                              style: TextStyle(),
                            ),
                          ],
                        ),
                        SizedBox(width: 20.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              duration,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Duration",
                              style: TextStyle(),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              experience,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Experience Level",
                              style: TextStyle(),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    // Row(
                    //   children: <Widget>[
                    ExpandableText(
                      // 'looking for a t shirt designer  ',
                      'looking for a t shirt designer with great ability to perform a task ',
                      collapseText: 'less',
                      expandText: 'more',
                    ),
                    // Text('looking for a t shirt designer with great ',),
                    // ],
                    // ),
                    SizedBox(height: 15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        RaisedButton(
                          child: Text(
                            buttonText1,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          onPressed: null,
                        ),
                        SizedBox(width: 10.0),
                        RaisedButton(
                          child: Text(
                            buttonText2,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          onPressed: null,
                        ),
                        SizedBox(width: 10.0),
                        RaisedButton(
                          child: Text(
                            buttonText3,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          onPressed: null,
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      children: [
                        Icon(
                          Icons.verified,
                          color: Colors.appColor,
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          // Text(
                          'Payment verified',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 10.0),
                        RichText(
                          text: TextSpan(
                              text: dollars,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              children: [
                                TextSpan(
                                  text: ' spent',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                  ),
                                )
                              ]),
                        ),
                        // Text('\$0 spent', style: TextStyle(fontWeight: FontWeight.bold,),),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            card(
              'Graphic designer for clothing line',
              '\$15.00-\$34.00',
              '10-30 hrs/week',
              '1 to 3 month',
              'Intermediate',
              'looking for a logo designer with great ',
              'Clothing',
              'Merchandise',
              'Development',
              '700+',
            ),
            card(
              'Web developer for E-commerce',
              '\$45.00-\$74.00',
              '10-30 hrs/week',
              '6 to 8 month',
              'Graduate',
              'looking for a web developer with great ',
              'Webdesigning',
              'Development',
              'Logo designing',
              '900+',
            ),
          ],
        ),
      ),
    );
  }
}
