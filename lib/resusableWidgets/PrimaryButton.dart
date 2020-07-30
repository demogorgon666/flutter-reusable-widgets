import 'package:flutter/material.dart';

class PrimaryButton extends StatefulWidget {
  String text;
  Function onClickFunction;
  double width, height;
  final buttonColor;

  PrimaryButton({this.text, this.onClickFunction, this.buttonColor});
  @override
  _PrimaryButtonState createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FloatingActionButton(
          onPressed: widget.onClickFunction,
          elevation: 0,
          backgroundColor: widget.buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: Text(
            widget.text,
          )),
    );
  }
}
