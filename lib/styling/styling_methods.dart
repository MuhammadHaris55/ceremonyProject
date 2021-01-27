import 'package:ceremony/styling/searchBar.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
// import 'package:ceremony/screens/client.dart';
// import 'package:ceremony/main.dart';
import 'package:ceremony/screens/login.dart';

//                                           APPBAR DESIGNING METHOD
AppBar appbar(String text) {
  return AppBar(
    backgroundColor: Colors.appColor,
    shadowColor: Colors.appColora,
    centerTitle: true,
    title: Text(
      text,
      style: TextStyle(
        color: Colors.appbar_text,
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.search),
        onPressed: () {
          // showSearch(context: context, delegate: searchBar());
        },
      ),
    ],
  );
}

// , String obscure                            TEXTFIELD
Container text_field(String text, String icon) {
  return Container(
    height: 58,
    // padding: EdgeInsets.all(2),
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
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.appColor,
            blurRadius: 20.0,
            // offset: Offset(0, 10),
          ),
        ]),
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

//                                           TEXTFIELD DESIGNING METHOD
Container otext_field(String text) {
  return Container(
    padding: EdgeInsets.all(8.0),
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Color.fromRGBO(223, 6, 128, 6),
        ),
      ),
    ),
    child: TextField(
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: text,
        hintStyle: TextStyle(
          color: Color.fromRGBO(223, 6, 128, 3),
        ),
      ),
    ),
  );
}

class route extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(colors: [
          Color.fromRGBO(236, 85, 169, 1),
          Color.fromRGBO(236, 85, 169, 6),
          // Colors.appColora,
          // Color.fromRGBO(223, 6, 128, 6),
          // Color.fromRGBO(223, 6, 128, 2),
        ]),
      ),
      child: Center(
        child: RaisedButton(
          disabledColor: Colors.transparent,
          padding: EdgeInsets.symmetric(horizontal: 133, vertical: 15),
          child: Text(
            'text',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => login()),
            );
          },
        ),
      ),
    );
  }
}

//                                            BUTTON DESIGNING METHOD
RaisedButton button(String text, String _user) {
  return RaisedButton(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    padding: EdgeInsets.zero,
    child: Container(
      height: 58,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [
            // Color.fromRGBO(223, 6, 128, 1),
            Color.fromRGBO(226, 85, 169, 1),
            Color.fromRGBO(223, 6, 128, 2),
          ],
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
    // onPressed: () {if (_user == 'Hirer') {Navigator.of(context).pushNamed('/hirer');} elseNavigator.of(context).pushNamed('/client');}Navigator.push(context,MaterialPageRoute(builder: (context) => login()),);},
    // ),
  );
  //PEHLY WALA BUTTON
  // return Container(
  //   height: 58,
  //   decoration: BoxDecoration(
  //     borderRadius: BorderRadius.circular(10),
  //     gradient: LinearGradient(colors: [
  //       // Color.fromRGBO(223, 6, 128, 1),
  //       Color.fromRGBO(226, 85, 169, 1),
  //       Color.fromRGBO(223, 6, 128, 2),
  //     ]),
  //   ),
  //   child: Center(
  //     child: RaisedButton(
  //       // disabledColor: Colors.transparent,
  //       color: Colors.appColor,
  //       padding: EdgeInsets.symmetric(horizontal: 133, vertical: 15),
  //       child: Text(
  //         text,
  //         style: TextStyle(
  //           color: Colors.white,
  //           fontWeight: FontWeight.bold,
  //         ),
  //       ),
  //       onPressed: () {
  //         //   if (_user == 'Hirer') {
  //         //               Navigator.of(context).pushNamed('/hirer');
  //         //             } else
  //         //               Navigator.of(context).pushNamed('/client');
  //         //   }
  //         //   Navigator.push(
  //         //     context,
  //         //     MaterialPageRoute(builder: (context) => login()),
  //         //   );
  //       },
  //     ),
  //   ),
  // );
}

//                                            BOTTOM NAVIGATION BAR
BottomNavigationBar botNavBar() {
  return BottomNavigationBar(
    // currentIndex: _currentIndex,
    type: BottomNavigationBarType.shifting,
    backgroundColor: Colors.appColor,

    items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        // title: Text('Home'),
        label: 'Home',
        backgroundColor: Colors.appColor,
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Profile',
        backgroundColor: Colors.appColor,
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: 'Search',
        backgroundColor: Colors.appColor,
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.notifications),
        label: 'Notifications',
        backgroundColor: Colors.appColor,
      ),
    ],
    // onTap: (index) {
    // setState(() {
    //   // _currentIndex = index;
    //   if (index == 0) {
    //     Navigator.of(context).pushNamed('/hirer');
    //   } else if (index == 1) {
    //     Navigator.of(context).pushNamed('/client');
    //   } else if (index == 2) {
    //     Navigator.of(context).pushNamed('/login');
    //   } else if (index == 3) {
    //     Navigator.of(context).pushNamed('/signup');
    //   }
    // });
    // },
  );
}

//                                            CARD DESIGNING METHOD
Card card(
    String jobTilte,
    String hourly,
    String hours,
    String duration,
    String experience,
    String description,
    String buttonText1,
    String buttonText2,
    String buttonText3,
    String dollars) {
//   String jobTilte = 't shirt design';
//   String hourly = '\$15.00-\$34.00';
//   String hours = 'Less than 10 hrs/week';
//   String duration = '1 to 3 months';
//   String experience = 'Intermediate';
//   String description = 'looking for a web developer with great ';
// //LAST BUTTON TEXT
//   String buttonText1 = 'Clothing';
//   String buttonText2 = 'Sketch';
//   String buttonText3 = '3 more';
//   String dollars = '\$0';
  return Card(
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
                        fontWeight: FontWeight.bold,
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
                text: 'Hourly: $hourly',
                style: TextStyle(
                  // color: Colors.appColor,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: ' - Posted 1h ago',
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
// "Hours Needed"    "Duration"
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
                        "Hours Needed",
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
// Experience Level
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
// ExpandableText => description
          ExpandableText(
            // 'looking for a t shirt designer  ',
            description,
            collapseText: 'less',
            expandText: 'more',
          ),
          // Row(children: <Widget>[ExpandableText(description,expandText: 'more',collapseText: 'less',),],),
          SizedBox(height: 15.0),
          // ListView(
          // scrollDirection: Axis.horizontal,
          // children: <Widget>[],
          // ),

          Wrap(
            direction: Axis.horizontal,
            children: <Widget>[
// RaisedButton buttonText1
              RaisedButton(
                child: Text(
                  buttonText1,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                onPressed: null,
              ),
              SizedBox(width: 10.0),
// RaisedButton buttonText2
              RaisedButton(
                child: Text(
                  buttonText2,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                onPressed: null,
              ),
              SizedBox(width: 10.0),
// RaisedButton buttonText3
              RaisedButton(
                child: Text(
                  buttonText3,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                onPressed: null,
              ),
            ],
          ),
          // Row(// mainAxisAlignment: MainAxisAlignment.start,children: <Widget>[Flexible(flex: 2,child: RaisedButton(child: Text(buttonText1,style: TextStyle(fontWeight: FontWeight.normal,),),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),),onPressed: null,),),SizedBox(width: 10.0),Flexible(flex: 2,child: RaisedButton(child: Text(buttonText2,style: TextStyle(fontWeight: FontWeight.normal,),),
          //     color: Colors.grey[50],shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),),onPressed: null,),),SizedBox(width: 10.0),Flexible(flex: 2,child: RaisedButton(child: Text(buttonText3,style: TextStyle(fontWeight: FontWeight.normal,),),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),),onPressed: null,),),],),
          SizedBox(height: 20.0),
// Payment verified
          Row(
            children: [
              Icon(
                Icons.verified,
                color: Colors.appColor,
              ),
              SizedBox(width: 10.0),
              // Text(
              Text(
                'Payment verified',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 10.0),
// dollars  spent
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
                    ),
                  ],
                ),
              ),
            ],
          ),
          // Text('\$0 spent',style: TextStyle(fontWeight: FontWeight.bold,),),
        ],
      ),
    ),
  );
  // Card(margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0), child: Padding(padding: const EdgeInsets.all(12.0),child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,children: <Widget>[Text(text, style: TextStyle(color: Colors.pinkAccent,),),],),),);
}

// GestureDetector butt(){
//   return GestureDetector(
//     onTap: (){
//       Navigator.push(context, MaterialPageRoute(builder: (context) => login))
//     },
//   );
// }
