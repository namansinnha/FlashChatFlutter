import 'package:flutter/material.dart';

class MaterializedButton extends StatelessWidget {
  final Color buttonColor;
  final Function onClick;
  final String buttonText;

  MaterializedButton(
      {@required this.buttonColor,
      @required this.onClick,
      @required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: buttonColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onClick,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            buttonText,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
