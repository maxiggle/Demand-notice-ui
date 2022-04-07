import 'package:flutter/material.dart';

class BackButtons extends StatelessWidget {
  final Color buttonColor;
  const BackButtons({@required this.buttonColor});
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      width: 60,
      child: MaterialButton(
        onPressed: () {},
        color: buttonColor,
        child: Icon(Icons.arrow_back),
        shape: CircleBorder(),
        elevation: 0,
      ),
    );
  }
}
