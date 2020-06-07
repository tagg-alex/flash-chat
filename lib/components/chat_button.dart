import 'package:flutter/material.dart';

class ChatButton extends StatelessWidget {
  ChatButton({this.setUpType, this.colour, @required this.onPressed});
  final String setUpType;
  final Color colour;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: colour,
        // borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            setUpType,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
