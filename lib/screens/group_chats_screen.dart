import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flash_chat/components/chat_button.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/components/rounded_button.dart';
import 'package:flash_chat/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:flash_chat/components/chat_button.dart';

final _firestore = Firestore.instance;
FirebaseUser loggedInUser;

class GroupChats extends StatefulWidget {
  static String id = 'group_chats_screen';
  @override
  _GroupChatsState createState() => _GroupChatsState();
}

//TODO: this list needs to have collections added to it whenever they're made

class _GroupChatsState extends State<GroupChats> {
  //String chatName = 'ThGroupChat';
  final _auth = FirebaseAuth.instance;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser();
      if (user != null) {
        loggedInUser = user;
        print(loggedInUser.email);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Scaffold(
        //inAsyncCall: showSpinner,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 60.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ChatStream(),
              ChatButton(
                setUpType: 'TheGroupChat',
                colour: Colors.blueGrey,
                onPressed: () {
                  Navigator.pushNamed(context, ChatScreen.id);
                },
              ),
              SizedBox(
                height: 24.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget alexsView;
List<Widget> messageChats = [];

class ChatStream extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _firestore
          .collection('messages')
          .orderBy('time', descending: false)
          .snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.lightBlueAccent,
            ),
          );
        }

        try {
          final messages = snapshot.data.documents.reversed;
          final trueMessages = messages.toString();
          for (var message in messages) {
            final textMessage = message.documentID;

            final contView = Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
                textMessage,
                style: TextStyle(fontSize: 20.0, color: Colors.black),
              ),
            );
            messageChats.add(contView);
          }
        } catch (e) {
          print(e);
        }
        return Expanded(
          child: ListView(
            children: messageChats,
          ),

//          ListView(
//            reverse: true,
//            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
//            children: messageBubbles,
        );
      },
    );
  }
}
