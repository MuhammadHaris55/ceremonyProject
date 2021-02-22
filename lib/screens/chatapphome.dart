import 'package:ceremony/models/message_model.dart';
import 'package:ceremony/screens/chatapp.dart';
import 'package:ceremony/styling/styling_methods.dart';
import 'package:ceremony/models/user_model.dart';

import 'package:flutter/material.dart';

class CHATAPPHOME extends StatefulWidget {
  @override
  _CHATAPPHOMEState createState() => _CHATAPPHOMEState();
}

class _CHATAPPHOMEState extends State<CHATAPPHOME> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appbar('Chat'),
      // AppBar(
      //   elevation: 8,
      //   leading: IconButton(
      //     icon: Icon(Icons.menu),
      //     color: Colors.white,
      //     onPressed: () {},
      //   ),
      //   title: Text('INBOX'),
      //   actions: <Widget>[
      //     IconButton(
      //       icon: Icon(Icons.search),
      //       color: Colors.white,
      //       onPressed: () {},
      //     ),
      //   ],
      // ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (BuildContext context, int index) {
          final Message chat = chats[index];
          return GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => CHATAPP(
                          user: chat.sender,
                        ))),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(2),
                    decoration: chat.unread
                        ? BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            border: Border.all(
                              width: 2,
                              color: Theme.of(context).primaryColor,
                            ),
                            // shape: BoxShape.circle,
                            boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                )
                              ])
                        : BoxDecoration(shape: BoxShape.circle, boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                            )
                          ]),
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(chat.sender.imageUrl),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.65,
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 130,
                                  child: Text(
                                    // chat.sender.name,
                                    'CaptainAmer9ca fgdgfd',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        // color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                chat.sender.isOnline
                                    ? Container(
                                        margin: const EdgeInsets.only(left: 3),
                                        width: 7,
                                        height: 7,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color:
                                                Theme.of(context).primaryColor),
                                      )
                                    : Container(child: null),
                              ],
                            ),
                            Text(
                              chat.time,
                              style: TextStyle(
                                  // color: Colors.black,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black54),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            chat.text,
                            style: TextStyle(
                                // color: Colors.black,
                                fontSize: 13,
                                color: Colors.black54),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
