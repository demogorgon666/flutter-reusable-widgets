import 'package:flutter/material.dart';

class PrimaryButton extends StatefulWidget {
  String buttonText;
  Function onButtonPress;
  final buttonColor;

  PrimaryButton({this.buttonText, this.onButtonPress, this.buttonColor});
  @override
  _PrimaryButtonState createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FloatingActionButton(
          onPressed: widget.onButtonPress,
          elevation: 0,
          backgroundColor: widget.buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: Text(
            widget.buttonText,
          )),
    );
  }
}
