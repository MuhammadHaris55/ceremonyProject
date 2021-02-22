import 'package:ceremony/styling/styling_methods.dart';
import 'package:flutter/material.dart';

class alerts extends StatefulWidget {
  @override
  _alertsState createState() => _alertsState();
}

class _alertsState extends State<alerts> {
  List todolist = [
    'hi',
    'hello',
    'hello',
    'hello',
    'hello',
    'hello',
    'hello',
    'hello',
  ];
  String task;
  String date = 'January 20';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar('Notification'),
      backgroundColor: Colors.scaffoldBack,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Card(
              color: Colors.cardBack,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Today",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    // Divider(height: 30.0),
                    horizline(),

                    Text(
                      "No new notifications.",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 30.0),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Card(
              color: Colors.cardBack,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Earlier",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    // Divider(height: 30.0),
                    horizline(),
                    jobNotification(
                        'Your past client posted a new job', 'January 20'),
                    // Divider(height: 30.0),
                    horizline(),

                    jobNotification(
                        'Your past client posted a new job', 'January 19'),
                    // Divider(height: 30.0),
                    horizline(),

                    jobNotificationWObut(
                        'A recent sign-in to your Upwork account (syedaliwebdev) from an unknown device or browser.',
                        'January 5'),
                    // Divider(height: 30.0),
                    horizline(),

                    jobNotificationWObut(
                        'A recent sign-in to your Upwork account (syedaliwebdev) from an unknown device or browser.',
                        'January 5'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//WITHOUT BUTTON
Row jobNotificationWObut(String notification, String date) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Flexible(
        flex: 1,
        child: Icon(
          Icons.account_circle,
          color: Colors.appColor,
        ),
      ),
      SizedBox(width: 10.0),
      Flexible(
        flex: 8,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      notification,
                    ),
                  ),
                ],
              ),
              Text(
                date,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(width: 10.0),
      Flexible(
        flex: 1,
        child: IconButton(
          icon: Icon(Icons.cancel),
          color: Colors.appColora,
          onPressed: () {
            // setState(() {
            // todolist.removeAt(index);
            // });
          },
        ),
      ),
    ],
  );
}

//WITH BUTTON
Row jobNotification(String notification, String date) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Flexible(
        flex: 1,
        child: Icon(
          Icons.account_circle,
          color: Colors.appColor,
        ),
      ),
      SizedBox(width: 10.0),
      Flexible(
        flex: 8,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      notification,
                    ),
                  ),
                ],
              ),
              Text(
                date,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              FlatButton(
                onPressed: () {},
                color: Colors.grey[350],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  'View Job',
                  style: TextStyle(
                    color: Colors.appColora,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(width: 10.0),
      Flexible(
        flex: 1,
        child: IconButton(
          icon: Icon(Icons.cancel),
          color: Colors.appColora,
          onPressed: () {
            // setState(() {
            // todolist.removeAt(index);
            // });
          },
        ),
      ),
    ],
  );
}
// Card(
//   child: Container(
//     child: ListView.separated(
//       itemCount: todolist.length,
//       itemBuilder: (BuildContext context, int index) {
//         return Dismissible(
//           key: Key(todolist[index]),
//           // child:
//           // Text(
//           //   'Earlier',
//           //   style: TextStyle(
//           //     fontSize: 22.0,
//           //     fontWeight: FontWeight.bold,
//           //   ),
//           // ),
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Flexible(
//                 flex: 1,
//                 child: Icon(
//                   Icons.account_circle,
//                   color: Colors.appColor,
//                 ),
//               ),

//               SizedBox(width: 10.0),

//               Flexible(
//                 flex: 8,
//                 child: Container(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     // mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Your past client posted a new job Your past client posted a new job',
//                       ),
//                       Text(
//                         date,
//                         style: TextStyle(
//                           color: Colors.grey,
//                         ),
//                       ),
//                       FlatButton(
//                         onPressed: () {},
//                         color: Colors.grey[350],
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10.0),
//                         ),
//                         child: Text(
//                           'View Job',
//                           style: TextStyle(
//                             color: Colors.appColora,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),

//               SizedBox(width: 10.0),

//               Flexible(
//                 flex: 1,
//                 child: IconButton(
//                   icon: Icon(Icons.cancel),
//                   color: Colors.appColora,
//                   onPressed: () {
//                     setState(() {
//                       todolist.removeAt(index);
//                     });
//                   },
//                 ),
//               ),
//               // ListTile(
//               //   leading: Icon(
//               //     Icons.account_circle,
//               //     color: Colors.appColor,
//               //   ),
//               //   title: Column(
//               //     children: [
//               //       Text(todolist[index]),
//               //     ],
//               //   ),
//               //   trailing: IconButton(
//               //     icon: Icon(Icons.cancel),
//               //     color: Colors.appColora,
//               //     onPressed: () {
//               //       setState(() {
//               //         todolist.removeAt(index);
//               //       });
//               //     },
//               //   ),
//               // ),
//             ],
//           ),
//         );
//       },
//       separatorBuilder: (context, _) => Divider(),
//     ),
//   ),
// ),
