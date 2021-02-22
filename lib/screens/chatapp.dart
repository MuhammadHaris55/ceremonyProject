import 'package:ceremony/styling/styling_methods.dart';
import 'package:flutter/material.dart';
import 'package:ceremony/models/message_model.dart';
import 'package:ceremony/models/user_model.dart';
import 'attachscreen.dart';

class CHATAPP extends StatefulWidget {
  final User user;
  CHATAPP({this.user});

  @override
  _CHATAPPState createState() => _CHATAPPState();
}

class _CHATAPPState extends State<CHATAPP> {
  _chatBubble(Message message, bool isMe, bool isSameUser) {
    if (isMe) {
      return Column(
        children: [
          Container(
            alignment: Alignment.topRight,
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.80,
              ),
              // child: Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.appColora.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5)
                  ]),
              child: Text(
                message.text,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          !isSameUser
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      message.time,
                      style: TextStyle(fontSize: 12, color: Colors.black45),
                    ),
                    SizedBox(width: 10),
                    Container(
                      decoration:
                          // chat.unread ? BoxDecoration(
                          //   borderRadius: BorderRadius.all(Radius.circular(40)),
                          //   border:Border.all(
                          //     width: 2,
                          //     color:Theme.of(context).primaryColor,
                          //   )
                          //   boxShadow: [
                          //     BoxShadow(
                          //       color:Colors.grey.withOpacity(0.5),
                          //       spreadRadius: 2,
                          //       blurRadius: 5,
                          //     )
                          //   ],
                          // )
                          // :
                          BoxDecoration(shape: BoxShape.circle, boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                        )
                      ]),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(message.sender.imageUrl),
                      ),
                    ),
                  ],
                )
              : Container(
                  child: null,
                )
        ],
      );
    } else {
      return Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.80,
              ),
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5)
                  ]),
              child: Text(message.text),
            ),
          ),
          !isSameUser
              ? Row(
                  children: <Widget>[
                    Container(
                      decoration:
                          // chat.unread ? BoxDecoration(
                          //   borderRadius: BorderRadius.all(Radius.circular(40)),
                          //   border:Border.all(
                          //     width: 2,
                          //     color:Theme.of(context).primaryColor,
                          //   )
                          //   boxShadow: [
                          //     BoxShadow(
                          //       color:Colors.grey.withOpacity(0.5),
                          //       spreadRadius: 2,
                          //       blurRadius: 5,
                          //     )
                          //   ],
                          // )
                          // :
                          BoxDecoration(shape: BoxShape.circle, boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                        )
                      ]),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(message.sender.imageUrl),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      message.time,
                      style: TextStyle(fontSize: 12, color: Colors.black45),
                    ),
                  ],
                )
              : Container(child: null)
        ],
      );
    }
  }

  //attact work method
  Widget bottomsheet() {
    return Container(
      height: 175,
      width: MediaQuery.of(context).size.width,
      child: Card(
        margin: EdgeInsets.all(30),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 8),
                  iconcreation(
                      Icons.insert_drive_file, Colors.indigo, "Documents"),
                  SizedBox(width: 20),
                  iconcreation(
                      Icons.contact_phone, Colors.blueAccent, "Contacts"),
                  SizedBox(width: 20),
                  iconcreation(
                      Icons.insert_drive_file, Colors.purple, "Gallery"),
                  SizedBox(width: 20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget iconcreation(IconData icon, Color color, String text) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: color,
          radius: 25,
          child: Icon(
            icon,
            size: 28,
            color: Colors.white,
          ),
        ),
        Text(
          text,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  _sendMessageArea() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      height: 70,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          // IconButton(
          //   icon: Icon(Icons.photo),
          //   iconSize: 25,
          //   color: Theme.of(context).primaryColor,
          //   onPressed: () {},
          // ),

          Expanded(
            child: TextField(
                decoration:
                    InputDecoration.collapsed(hintText: 'send the message...'),
                textCapitalization: TextCapitalization.sentences),
          ),
          IconButton(
              icon: Icon(Icons.attach_file),
              iconSize: 25,
              color: Theme.of(context).primaryColor,
              onPressed: () {
                showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (Builder) => bottomsheet());
              }),

          IconButton(
            icon: Icon(Icons.send),
            iconSize: 25,
            color: Theme.of(context).primaryColor,
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    int prevUserId;
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        centerTitle: true,
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(children: [
            TextSpan(
                text: widget.user.name,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
            TextSpan(text: '\n'),
            widget.user.isOnline
                ? TextSpan(
                    text: "Online",
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400))
                : TextSpan(
                    text: "Offline",
                    style:
                        TextStyle(fontSize: 11, fontWeight: FontWeight.w400)),
          ]),
        ),
        leading: IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              // reverse: true,
              padding: EdgeInsets.all(20),
              itemCount: messages.length,
              itemBuilder: (BuildContext context, int index) {
                final Message message = messages[index];
                final bool isMe = message.sender.id == currentUser.id;
                final bool isSameUser = prevUserId == message.sender.id;
                prevUserId = message.sender.id;
                return _chatBubble(message, isMe, isSameUser);
              },
            ),
          ),
          _sendMessageArea(),
        ],
      ),
    );
  }
}
