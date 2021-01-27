import 'package:ceremony/styling/styling_methods.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class job_details extends StatefulWidget {
  @override
  _job_detailsState createState() => _job_detailsState();
}

class _job_detailsState extends State<job_details> {
  String jobTilte = 'Scripting & Automation';
  String hourly = '\$15.00-\$34.00';
  String hours = 'Less than 30 hrs/week';
  String duration = '< 1 months';
  String experience = 'Intermediate';
  String projectType = 'One-time project';
  String description = 'looking for a web developer with great ';
//LAST BUTTON TEXT
  String buttonText1 = 'Clothing';
  String buttonText2 = 'Sketch';
  String buttonText3 = '3 more';
  String dollars = '\$0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar('Job details'),
      body: SingleChildScrollView(
        child: Card(
          margin: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 0.0),
          color: Colors.grey[200],
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
//                 Container(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       Flexible(
//                         flex: 6,
//                         child: Align(
//                           alignment: Alignment.centerLeft,
//                           child: Text(
//                             jobTilte,
//                             style: TextStyle(
//                               color: Colors.appColora,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Flexible(
//                         flex: 1,
//                         child: IconButton(
//                           iconSize: 30,
//                           icon: Icon(
//                             Icons.thumb_down_rounded,
//                             color: Colors.appColora,
//                           ),
//                           onPressed: null,
//                         ),
//                       ),
//                       Flexible(
//                         flex: 1,
//                         child: IconButton(
//                           iconSize: 30,
//                           icon: Icon(
//                             // Icons.thumb_down,
//                             Icons.favorite,
//                             color: Colors.appColor,
//                           ),
//                           // icon: CircleAvatar(
//                           //   backgroundImage: NetworkImage(
//                           //     // 'https://qtxasset.com/fiercebiotech/1568212087/connor-wells-534089-unsplash.jpg/connor-wells-534089-unsplash.jpg?BuQ3QN_sJxL_thkPRXvRQQ57AqHI2UBW',
//                           //     'https://www.jing.fm/clipimg/detail/251-2510275_heart-for-kids.png',
//                           //   ),
//                           // ),
//                           onPressed: null,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
// //TEXT HOURLY -
//                 RichText(
//                   text: TextSpan(
//                       text: 'Hourly: $hourly',
//                       style: TextStyle(
//                         // color: Colors.appColor,
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold,
//                       ),
//                       children: [
//                         TextSpan(
//                           text: ' - Posted 1h ago',
//                           style: TextStyle(
//                             // color: Colors.appColor,
//                             color: Colors.black,
//                             fontWeight: FontWeight.normal,
//                           ),
//                         )
//                       ]),
//                 ),
//                 // Text('Hourly - Posted 1h ago', style: TextStyle(color: Colors.appColor,fontWeight: FontWeight.bold,),),
//                 SizedBox(height: 30.0),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Automation',
                      style: TextStyle(
                        // color: Colors.appColora,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    horizline(),
                    Text(
                      jobTilte,
                      // 'Scripting & Automation',
                      style: TextStyle(
                        color: Colors.appColora,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      'Posted 12 minutes ago ',
                      style: TextStyle(
                        // color: Colors.appColor,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.location_on_outlined,
                          color: Colors.blueAccent,
                        ),
                        Text(
                          'Worldwide',
                          style: TextStyle(
                            // color: Colors.appColora,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(height: 3.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '1 required Connect (36 available)',
                          style: TextStyle(),
                        ),
                        Icon(Icons.fiber_manual_record),
                      ],
                    ),
                  ],
                ),
                horizline(),

// Expanded Text
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'hello \n'
                        'i have a program dealing with making request to a'
                        'website (binance.com api) using python. it Although '
                        'has cobble of errors i couldn\'t fix. Also I would like to '
                        'add few more please take a look? \n',
                      ),
                    ),
//YAHA KAAM KAR RHAA HOIUN
                  ],
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: 'https://www.airforshare.com',
                          style: TextStyle(
                            color: Colors.appColora,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async {
                              var url = "https://www.airforshare.com";
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw "Cannot load Url";
                              }
                            }),
                      TextSpan(
                        text: '\nThank you',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                horizline(),
// "Hours Needed"  AND  "Duration"
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Flexible(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              hours,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Hourly",
                              style: TextStyle(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // SizedBox(width: 20.0),
                    Flexible(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
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
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
// "Experience Level"
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
                horizline(),
// 'Project Type: '
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Project Type: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      projectType,
                      style: TextStyle(),
                    ),
                  ],
                ),
                horizline(),
// TEXT Skills and Expertise
                Row(
                  children: <Widget>[
                    Text(
                      'Skills and Expertise ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
// Skills and Expertise BOXES
                Wrap(
                  children: <Widget>[
// React
                    Container(
                      margin: EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 5.0),
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[350],
                      ),
                      child: Text(
                        'React',
                        style: TextStyle(
                          color: Colors.appColor,
                        ),
                      ),
                    ),
// Golang
                    Container(
                      margin: EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 5.0),
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[350],
                      ),
                      child: Text(
                        'Golang',
                        style: TextStyle(
                          color: Colors.appColor,
                        ),
                      ),
                    ),
// Node.js
                    Container(
                      margin: EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 5.0),
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[350],
                      ),
                      child: Text(
                        'Node.js',
                        style: TextStyle(
                          color: Colors.appColor,
                        ),
                      ),
                    ),
// Blockchain
                    Container(
                      margin: EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 5.0),
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[350],
                      ),
                      child: Text(
                        'Blockchain',
                        style: TextStyle(
                          color: Colors.appColor,
                        ),
                      ),
                    ),
// Cryptocurrency
                    Container(
                      margin: EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 5.0),
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[350],
                      ),
                      child: Text(
                        'Cryptocurrency',
                        style: TextStyle(
                          color: Colors.appColor,
                        ),
                      ),
                    ),
// PHP
                    Container(
                      margin: EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 5.0),
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[350],
                      ),
                      child: Text(
                        'PHP',
                        style: TextStyle(
                          color: Colors.appColor,
                        ),
                      ),
                    ),
// eCommerce
                    Container(
                      margin: EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 5.0),
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[350],
                      ),
                      child: Text(
                        'eCommerce',
                        style: TextStyle(
                          color: Colors.appColor,
                        ),
                      ),
                    ),
// Travel
                    Container(
                      margin: EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 5.0),
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[350],
                      ),
                      child: Text(
                        'Travel',
                        style: TextStyle(
                          color: Colors.appColor,
                        ),
                      ),
                    ),
// Bot Development
                    Container(
                      margin: EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 5.0),
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[350],
                      ),
                      child: Text(
                        'Bot Development',
                        style: TextStyle(
                          color: Colors.appColor,
                        ),
                      ),
                    ),
// Python
                    Container(
                      margin: EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 5.0),
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[350],
                      ),
                      child: Text(
                        'Python',
                        style: TextStyle(
                          color: Colors.appColor,
                        ),
                      ),
                    ),
                  ],
                ),
                horizline(),
// 'Activity on this job'
                Text(
                  'Activity on this job',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.0),
// Proposals :
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Proposals :',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    // ListTile(leading: Icon(Icons.face_outlined),title: Text('Less than 5',style: TextStyle(),),),
                    Text(
                      'Less than 5',
                      style: TextStyle(),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
// Interviewing:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Interviewing: ',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      '3',
                      style: TextStyle(),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
// Invites sent:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Invites sent: ',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      '0',
                      style: TextStyle(),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
// Unanswered invites
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Unanswered invites: ',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      '0',
                      style: TextStyle(),
                    ),
                  ],
                ),
                horizline(),

// 'About the client'
                Text(
                  'About the client',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.0),
// 'Payment verified'
                Row(
                  children: [
// TEXT 'Payment method not verified'
                    Text(
                      'Payment method not verified',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(width: 10.0),
// Icon
                    Icon(
                      // Icons.verified,
                      Icons.not_interested,
                      color: Colors.appColor,
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
// TEXT 'Saudi Arabia'
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Saudi Arabia',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '07:38 pm',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
// TEXT '1 job posted'
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '1 job posted',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '0% hire rate, 1 open job',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
// TEXT 'Member since Jan 22, 2021'
                Text(
                  'Member since Jan 22, 2021',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 10.0),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.,
                    children: <Widget>[
                      Icon(
                        Icons.flag_sharp,
                        color: Colors.appColora,
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        'Flag as inappropriate',
                        style: TextStyle(
                          color: Colors.appColora,
                        ),
                      )
                    ],
                  ),
                )

                // ExpandableText(
                //   // 'looking for a t shirt designer  ',
                //   description,
                //   collapseText: 'less',
                //   expandText: 'more',
                // ),
                // Row(children: <Widget>[ExpandableText(description,expandText: 'more',collapseText: 'less',),],),
                // SizedBox(height: 15.0),
                // ListView(
                // scrollDirection: Axis.horizontal,
                // children: <Widget>[],
                // ),

                // Wrap(
                //   direction: Axis.horizontal,
                //   children: <Widget>[
                //     RaisedButton(
                //       child: Text(
                //         buttonText1,
                //         style: TextStyle(
                //           fontWeight: FontWeight.normal,
                //         ),
                //       ),
                //       shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(20.0),
                //       ),
                //       onPressed: null,
                //     ),
                //     SizedBox(width: 10.0),
                //     RaisedButton(
                //       child: Text(
                //         buttonText2,
                //         style: TextStyle(
                //           fontWeight: FontWeight.normal,
                //         ),
                //       ),
                //       shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(20.0),
                //       ),
                //       onPressed: null,
                //     ),
                //     SizedBox(width: 10.0),
                //     RaisedButton(
                //       child: Text(
                //         buttonText3,
                //         style: TextStyle(
                //           fontWeight: FontWeight.normal,
                //         ),
                //       ),
                //       shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(20.0),
                //       ),
                //       onPressed: null,
                //     ),
                //   ],
                // ),
                // Row(// mainAxisAlignment: MainAxisAlignment.start,children: <Widget>[Flexible(flex: 2,child: RaisedButton(child: Text(buttonText1,style: TextStyle(fontWeight: FontWeight.normal,),),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),),onPressed: null,),),SizedBox(width: 10.0),Flexible(flex: 2,child: RaisedButton(child: Text(buttonText2,style: TextStyle(fontWeight: FontWeight.normal,),),
                //     color: Colors.grey[50],shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),),onPressed: null,),),SizedBox(width: 10.0),Flexible(flex: 2,child: RaisedButton(child: Text(buttonText3,style: TextStyle(fontWeight: FontWeight.normal,),),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),),onPressed: null,),),],),
                // SizedBox(height: 20.0),
// 'Payment verified'
//                 Row(
//                   children: [
//                     Icon(
//                       Icons.verified,
//                       color: Colors.appColor,
//                     ),
//                     SizedBox(width: 10.0),
//                     // Text(
//                     Text(
//                       'Payment verified',
//                       style: TextStyle(
//                         color: Colors.grey,
//                       ),
//                     ),
//                     SizedBox(width: 10.0),
//                     RichText(
//                       text: TextSpan(
//                         text: dollars,
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontWeight: FontWeight.bold,
//                         ),
//                         children: [
//                           TextSpan(
//                             text: ' spent',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontWeight: FontWeight.normal,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
                // Text('\$0 spent',style: TextStyle(fontWeight: FontWeight.bold,),),

                // Container(
                //   decoration: BoxDecoration(
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
                //     borderRadius: BorderRadius.circular(10.0),
                //   ),
                //   padding:
                //       EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                //   child:
// ROW WITH POSITON FIX
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     RaisedButton(
//                       padding: EdgeInsets.symmetric(
//                           vertical: 15.0, horizontal: 70.0),
//                       color: Colors.appColor,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10.0),
//                       ),
//                       child: Text(
//                         'Submit a Proposal',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       onPressed: () {},
//                     ),
//                     CircleAvatar(
//                       backgroundColor: Colors.white,
//                       child: Icon(
//                         Icons.favorite_outline_sharp,
//                         size: 30.0,
//                       ),
//                     ),
//                   ],
//                 ),
              ],
            ),
          ),
        ),
      ),
// bottomNavigationBar
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 5.0),
            RaisedButton(
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 70.0),
              color: Colors.appColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                'Submit a Proposal',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {},
            ),
            CircleAvatar(
              backgroundColor: Colors.grey[350],
              child: IconButton(
                color: Colors.grey,
                icon: Icon(Icons.favorite_outline_sharp),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Divider horizline() {
  return Divider(
    color: Colors.appColora,
    height: 30.0,
  );
}
