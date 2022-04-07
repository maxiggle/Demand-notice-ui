import 'package:fdottedline/fdottedline.dart';
import 'package:flutter/material.dart';
import 'package:rsvg_app/customisation/text_customisation.dart';
import 'package:rsvg_app/screens/business_detail_dn_list.dart';

class BusinessDetail extends StatefulWidget {
  const BusinessDetail({Key key}) : super(key: key);

  @override
  _BusinessDetailState createState() => _BusinessDetailState();
}

class _BusinessDetailState extends State<BusinessDetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
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
                  padding: EdgeInsets.fromLTRB(21, 2, 20, 1),
                  decoration: BoxDecoration(
                      color: Color(0xffFFD7E5),
                      borderRadius: BorderRadius.circular(11)),
                  child: Text(
                    'Agent',
                    style: TextStyle(color: Color(0xff873750), fontSize: 13),
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
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Container(
              color: Color(0xffFFFFFF),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 32,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 212,
                        width: 389,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(4),
                              bottomRight: Radius.circular(4)),
                          color: Color(0xffFFFFFF),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffEBEBEC),
                              offset: Offset(0, 1),
                              blurRadius: 5,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            height: 153,
                            // width: 389,
                            decoration: BoxDecoration(
                                color: Color(0xff005A7A),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(4),
                                    topRight: Radius.circular(4))),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 32),
                              child: Row(
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xff2F7F97),
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                      height: 46,
                                      width: 46,
                                      child: Center(
                                        child: Icon(
                                          Icons.storefront_outlined,
                                          color: Color(0xff7DACBB),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 16),
                                        child: Text(
                                          'Paragraph Limited',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontFamily: 'Avenir',
                                              color: Color(0xffFFFFFF)),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 8),
                                        child: Container(
                                            // padding:EdgeInsets.only(top: 8),
                                            height: 21,
                                            width: 122,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(11),
                                                color: Color(0xffD0F0FD)),
                                            child: Center(
                                                child:
                                                    Text('Informal sector'))),
                                      ),
                                      size16,
                                      Text(
                                        'ID: MCI-23-02-00001',
                                        style: TextStyle(
                                            color: Color(0xffFFFFFF),
                                            fontFamily: 'Avenir',
                                            fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 24, vertical: 16),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: FDottedLine(
                                    color: Color(0xff439BB4),
                                    strokeWidth: 2.0,
                                    dottedLength: 3.0,
                                    // space: 20,
                                    //  height: 30,
                                    child: Padding(
                                      padding:  EdgeInsets.only(left: 12,right:12,top: 3,bottom: 3),
                                      child: Text(
                                          'General Information',
                                          style: TextStyle(
                                            fontSize: 13,
                                              color: Color(0xff0081A1),
                                              fontFamily: 'Avenir'),
                                        ),
                                    ),
                                  ),
                                ),
                                size24,
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (_)=>BusinessDetailDNlist()));
                                  },
                                  child: Padding(
                                    padding:  EdgeInsets.only(left: 12,right:12),
                                    child: Text(
                                        'Applications',
                                        style: TextStyle(
                                          fontSize: 13,
                                            color: Color(0xff0081A1),
                                            fontFamily: 'Avenir'),
                                      ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 24, top: 32),
                    child: Column(
                      children: [
                        Text('Address',
                            style: TextStyle(
                              fontFamily: 'Avenir',
                            )),
                      ],
                    ),
                  ),
                  size6,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      children: [
                        Container(
                          height: 44,
                          width: 220,
                          child: Text('14 Ogboko Street,Mgbuoba Obio-Apkor',
                              style: TextStyle(
                                fontFamily: 'Avenir',
                              )),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 24, top: 16),
                    child: Column(
                      children: [
                        Text(
                          'L.G.A',
                          style: TextStyle(fontFamily: 'Avenir'),
                        ),
                      ],
                    ),
                  ),
                  size6,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      children: [
                        Container(
                          height: 44,
                          width: 220,
                          child: Text('Obio-Apkor',
                              style: TextStyle(
                                fontFamily: 'Avenir',
                              )),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 24, top: 16),
                    child: Column(
                      children: [
                        Text('Ward',
                            style: TextStyle(
                              fontFamily: 'Avenir',
                            )),
                      ],
                    ),
                  ),
                  size6,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      children: [
                        Container(
                          height: 44,
                          width: 226,
                          child: Text('Obio-Apkor',
                              style: TextStyle(
                                fontFamily: 'Avenir',
                              )),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 24, top: 16),
                    child: Column(
                      children: [
                        Text('Phone',
                            style: TextStyle(
                              fontFamily: 'Avenir',
                            )),
                      ],
                    ),
                  ),
                  size6,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      children: [
                        Container(
                          height: 44,
                          width: 226,
                          child: Text('08012345678',
                              style: TextStyle(
                                fontFamily: 'Avenir',
                              )),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 24, top: 16),
                    child: Column(
                      children: [
                        Text('Address',
                            style: TextStyle(
                              fontFamily: 'Avenir',
                            )),
                      ],
                    ),
                  ),
                  size6,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      children: [
                        Container(
                          height: 44,
                          width: 226,
                          child: Text('princeprince@gmail.com',
                              style: TextStyle(
                                fontFamily: 'Avenir',
                              )),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
