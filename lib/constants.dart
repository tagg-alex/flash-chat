import 'package:flutter/material.dart';

const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);

const kTextFieldInputDecor = InputDecoration(
  hintText: 'hintText',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

const kBorderRadiusMe = BorderRadius.only(
  topLeft: Radius.circular(30.0),
  bottomLeft: Radius.circular(30.0),
  bottomRight: Radius.circular(30.0),
);

const kBorderRadiusNotMe = BorderRadius.only(
  topRight: Radius.circular(30.0),
  topLeft: Radius.circular(30.0),
  bottomRight: Radius.circular(30.0),
);

//class TextFieldInputs extends StatelessWidget {
//  TextFieldInputs(
//      {@required this.hintText,
//      this.boxColour,
//      this.textColour,
//      this.borderWidth,
//      this.radius});
//  final String hintText;
//  final Color boxColour;
//  final Color textColour;
//  final double borderWidth;
//  final double radius;
//  @override
//  Widget build(BuildContext context) {
//    return TextField(
//      onChanged: (value) {
//        //Do something with the user input.
//      },
//      decoration: InputDecoration(
//        hintText: hintText,
//        hintStyle: TextStyle(color: Colors.grey.shade400),
//        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
//        border: OutlineInputBorder(
//          borderRadius: BorderRadius.all(Radius.circular(32.0)),
//        ),
//        enabledBorder: OutlineInputBorder(
//          borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
//          borderRadius: BorderRadius.all(Radius.circular(32.0)),
//        ),
//        focusedBorder: OutlineInputBorder(
//          borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
//          borderRadius: BorderRadius.all(Radius.circular(32.0)),
//        ),
//      ),
//    );
//  }
//}
