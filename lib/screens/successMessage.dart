import 'package:flutter/material.dart';
import 'package:rsvg_app/customisation/text_customisation.dart';
class SucessMessageScreen extends StatefulWidget {
  const SucessMessageScreen({ Key key }) : super(key: key);

  @override
  _SucessMessageScreenState createState() => _SucessMessageScreenState();
}

class _SucessMessageScreenState extends State<SucessMessageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
           appBar: appBar,
           body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18,vertical:100 ),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xfFFFFFF),
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      offset: Offset(0,1),
                      color: Colors.white,
                    )
                  ]
                ),
              child: Container(
                height: MediaQuery.of(context).size.height ,
                width: MediaQuery.of(context).size.width,
               child: Align(
                 alignment: Alignment.topCenter,
                 child: Padding(
                   padding: const EdgeInsets.only(top: 73),
                   child: Text('DN21-00002 linked successfully!'),
                 )),
              ),
            ),
                 ),
         ),
      );
  }
}