import 'package:flutter/material.dart';
import 'package:rsvg_app/screens/successMessage.dart';
class AddButton extends StatelessWidget {
  const AddButton({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
     SizedBox(
       width: 194,
       height: 40,
       child: TextButton(
         onPressed: () { 
           Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>SucessMessageScreen()));
          },
       child: Text('Add and link Business') ,
       style: TextButton.styleFrom(backgroundColor: Color(0xff186F93),primary: Color(0xffFFFFFF)),
       ),
     );
  }
}