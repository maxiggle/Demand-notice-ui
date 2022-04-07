import 'package:flutter/material.dart';
import 'package:rsvg_app/screens/business_detail_application.dart';
import 'package:rsvg_app/screens/business_detail_info.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key key, this.hintText, this.hintStyle, this.icon});
  final String hintText;
  final TextStyle hintStyle;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: Color(0xffFFFFFF),
          filled: true,
          hintText: hintText,
          hintStyle: hintStyle,
          suffixIcon: icon,
          contentPadding: EdgeInsets.only(top: 10, bottom: 10, left: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide: BorderSide(
              color: Color(0xffDEDEDF),
            ),
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffEBEBEC))),
          //  focusedBorder: OutlineInputBorder(borderSide: )
        ),
      ),
    );
  }
}

class HomeCard extends StatefulWidget {
  const HomeCard({Key key}) : super(key: key);

  @override
  _HomeCardState createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  String dropdownvalue = 'Today';
  var items = [
    'Today',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Friday',
    'Saturday',
    'Sunday'
  ];
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
          width: 339,
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Revenue',
                      style: TextStyle(fontFamily: 'Avenir'),
                    ),
                    SizedBox(
                      height: 28,
                      width: 75,
                      child: Align(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Color(0xff319DC9),
                          ),
                          padding: EdgeInsets.only(left: 8, right: 3),
                          child: DropdownButton(
                            hint: Text(
                              'Today',
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'Avenir'),
                            ),

                            isExpanded: true,
                            underline: Container(),
                            // value: dropdownvalue,
                            icon: Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                            ),
                            iconSize: 20,
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(
                                  items,
                                ),
                              );
                            }).toList(),
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownvalue = newValue;
                              });
                            },
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  '#40,000,000,000',
                  overflow: TextOverflow.fade,
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: 28,
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                Text(
                  'REVENUE COLLECTED',
                  style: TextStyle(fontFamily: 'Avenir', fontSize: 11),
                )
              ],
            ),
          )),
      elevation: 0,
      color: Color(0xffE5F0F4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}

class CardCarousell {
  final String text;
  final Widget icon;
  final String title;
  final Color backgroundColor;
  CardCarousell(
      {@required this.icon,
      @required this.text,
      this.title,
      this.backgroundColor});
}

List<CardCarousell> cardCarousell = [
  CardCarousell(
    title: '1',
    text: 'Application',
    icon: Container(
      height: 44,
      width: 44,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Color(0xffFFEEF0)),
      child: Icon(
        Icons.description,
        color: Color(0xffFD6B6D),
      ),
    ),
    backgroundColor: Color(0xffFFEEF0),
  ),
  CardCarousell(
      title: '2',
      text: 'My Business',
      icon: Container(
        height: 44,
        width: 44,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Color(0xffFBE7AF)),
        child: Icon(
          Icons.storefront_outlined,
          color: Color(0xff5D543E),
        ),
      ),
      backgroundColor: Color(0xffFBE7AF)),
  CardCarousell(
      title: '50,675',
      text: 'Sub-Agents',
      icon: Container(
        height: 44,
        width: 44,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xffC0FFC3),
        ),
        child: Icon(
          Icons.people_outline,
          color: Color(0xff008542),
        ),
      ),
      backgroundColor: Color(0xffC0FFC3)),
];

//My Business Widget
class BusinessesWiget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 367,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Color(0xffE7E9F4), blurRadius: 5, offset: Offset(0, 1)),
          ]),
      child: Column(
      children: [
      
        Container(
        height: 48,
        width: 375,
        child: Padding(
          padding: EdgeInsets.only(top: 16, left: 24, bottom: 16),
          child: Text('NAME'),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(4), topRight: Radius.circular(4)),
          color: Color(0xffE7EAF4),
        ),
          ),
        Expanded(
        
           
            child:ListView.separated(
              separatorBuilder: (BuildContext context, index) => Divider(),
              itemCount: 6,
              itemBuilder: (BuildContext context, index) => Padding(
                padding:  EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                children: [
             TextButton(
               onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (_)=>BusinessDetail()));
               },
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text('Paragraph Ltd',style:TextStyle(color: Color(0xff646A86),fontFamily: 'Avenir'),),
                   Container(
                     height: 10.69,
                     width: 5.5,
                     child: Image(
                       
                       image: AssetImage(
                           'assets/ic-caret-right/ic-caret-right@2x.png'),
                     ),
                   ),
                 ],
               ),
             ),
              
                ],
             ),
              ),
                 ),
           
          ),
      
      ],
        ),
    );
  }
}
