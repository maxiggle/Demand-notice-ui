import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

var size16 = SizedBox(
  height: 16,
);
var size24 = SizedBox(width: 24);
var sizehieght24 = SizedBox(height: 24);
var size6 = SizedBox(
  height: 6,
);
var size4 = SizedBox(
  height: 4,
);
var size8 = SizedBox(
  height: 8,
);
var size38 = SizedBox(
  height: 38,
);
var size28 = SizedBox(
  height: 28,
);
var sizeHeight24 = SizedBox(
  height: 24,
);
var sizeHeight32 = SizedBox(
  height: 32,
);
var fontStyle =
    TextStyle(fontSize: 14, color: Color(0xff787996), fontFamily: 'Avenir');
var fontStyle2 =
    TextStyle(fontSize: 16, color: Color(0xff3B3673), fontFamily: 'Avenir');
var fontStyle4 = TextStyle(
    fontSize: 16,
    color: Color(0xff186F93),
    fontFamily: 'Avenir',
    fontWeight: FontWeight.w900);
var fontStyle3 =
    TextStyle(fontSize: 12, color: Color(0xff656687), fontFamily: 'Avenir');
var heavyFontstyle = TextStyle(
    fontSize: 16,
    color: Color(0xff2E2E2E),
    fontFamily: 'Avenir',
    fontWeight: FontWeight.w900);
var fontStyl =
    TextStyle(fontSize: 14, color: Color(0xff374072), fontFamily: 'Avenir');
var appBar = AppBar(
  backgroundColor: Color(0xffFFFFFF),
  shadowColor: Color(0xffE0E0E1),
  toolbarHeight: 66,
  flexibleSpace: Padding(
    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 19),
    child: Row(
      children: [
        Image(
          width: 106.6,
          image: AssetImage('assets/rvsgcom-logo.png'),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(21, 0, 15, 0),
          decoration: BoxDecoration(
              color: Color(0xffFFD7E5),
              borderRadius: BorderRadius.circular(11)),
          child: Center(
            child: Text(
              'Agent',
              style: TextStyle(color: Color(0xff873750), fontSize: 13),
            ),
          ),
          margin: EdgeInsets.only(left: 29),
          height: 21,
          width: 77,
          //  color: Colors.red,
        ),
      ],
    ),
  ),
  actions: [
    IconButton(
      iconSize: 30,
      color: Color(0xff0B4B5C),
      onPressed: () {},
      icon: Icon(Icons.menu),
    ),
  ],
);

class Materialbutton extends StatelessWidget {
  const Materialbutton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
      color: Color(0xff009E5E),
      child: Center(
        child: Text(
          'Link',
          style: TextStyle(fontFamily: 'Avenir', color: Color(0xffFFFFFF)),
        ),
      ),
      onPressed: () {},
    );
  }
}
