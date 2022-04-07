import 'package:flutter/material.dart';
import 'package:rsvg_app/customisation/text_customisation.dart';

class ListOfText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
           Text('Mama Nkechi Stores',style:heavyFontstyle,),
           SizedBox(height: 4,),
           Text('14 Abo Road, New Layout',style: fontStyle,),
           SizedBox(height:2,),
           Text('Mgbouba, Obio-akpor',style: fontStyle,),
           SizedBox(height:2,),
           Text('MCI-023-001-000001',style: fontStyl,),
     
    ],);
        
}
}