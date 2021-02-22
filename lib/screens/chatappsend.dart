import 'package:flutter/material.dart';
import 'package:ceremony/models/message_model.dart';
import 'package:ceremony/models/user_model.dart';

class CHATAPP extends StatefulWidget {
  // final User user;
  // CHATAPP({this.user});

  @override
  _CHATAPPState createState() => _CHATAPPState();
}

class _CHATAPPState extends State<CHATAPP> {
  // _chatBubble(Message message, bool isMe, bool isSameUser) {
  _chatBubble(String message, bool isMe, bool isSameUser) {
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
                message,
                // message.text,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          !isSameUser
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'message.time',
                      // message.time,
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
                        // backgroundImage: AssetImage(message.sender.imageUrl),
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
              child: Text(message),
              // child: Text(message.text),
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
                        // backgroundImage: AssetImage(message.sender.imageUrl),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'message.time',
                      // message.time,
                      style: TextStyle(fontSize: 12, color: Colors.black45),
                    ),
                  ],
                )
              : Container(child: null)
        ],
      );
    }
  }

  String getvalue;
  _sendMessageArea() {
    Message message;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      height: 70,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.photo),
            iconSize: 25,
            color: Theme.of(context).primaryColor,
            onPressed: () {},
          ),
          Expanded(
            child: TextField(
                controller: inputcontroller,
                decoration:
                    InputDecoration.collapsed(hintText: 'send the message...'),
                textCapitalization: TextCapitalization.sentences),
          ),
          IconButton(
            icon: Icon(Icons.send),
            iconSize: 25,
            color: Theme.of(context).primaryColor,
            onPressed: () {
              setState(() {
                viewChat.add(inputcontroller.text);
              });
            },
          ),
        ],
      ),
    );
  }

  List viewChat = [
    'haris pagal hai ...',
    'haris pagal hai ...',
  ];
  TextEditingController inputcontroller =
      new TextEditingController(); //for retrieve text object

  @override
  Widget build(BuildContext context) {
    int prevUserId;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(children: [
            TextSpan(
                text: "Johnson",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
            TextSpan(text: '\n'),
            // widget.user.isOnline ?
            TextSpan(
                text: "Online",
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400))
            //       : TextSpan(
            //           text: "Offline",
            //           style:
            //               TextStyle(fontSize: 11, fontWeight: FontWeight.w400)),
          ]),
        ),
        // leading: IconButton(
        //     color: Colors.white,
        //     icon: Icon(Icons.arrow_back_ios),
        //     onPressed: () {
        //       Navigator.pop(context);
        //     }),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              // reverse: true,
              padding: EdgeInsets.all(20),
              // itemCount: messages.length,
              itemCount: viewChat.length,
              itemBuilder: (BuildContext context, int index) {
                final String message = viewChat[index];
                // final Message message = viewChat[index];
                // final bool isMe = message.sender.id == currentUser.id;
                // final bool isSameUser = prevUserId == message.sender.id;
                // prevUserId = message.sender.id;
                // return _chatBubble(message, isMe, isSameUser);
                return _chatBubble(message, true, true);
              },
            ),
          ),
          _sendMessageArea(),
        ],
      ),
    );
  }
}
