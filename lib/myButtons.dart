import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  final String buttonText;

  const MyButtons({this.buttonText});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape:
          RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8.0)),
      onPressed: () => print('aaa'),
      child: Text(buttonText),
    );
  }
}
