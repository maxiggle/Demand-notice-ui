import 'package:fdottedline/fdottedline.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:rsvg_app/customisation/dn_list_builder.dart';
import 'package:rsvg_app/customisation/text_customisation.dart';
import 'package:rsvg_app/screens/demand_notice.dart';

class BusinessDetailDNlist extends StatefulWidget {
  const BusinessDetailDNlist({Key key}) : super(key: key);

  @override
  _BusinessDetailDNlistState createState() => _BusinessDetailDNlistState();
}

class _BusinessDetailDNlistState extends State<BusinessDetailDNlist> {
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
        body: Container(
          color: Color(0xffFFFFFF),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 18),
                child: Stack(
                  children: [
                    Container(
                      // padding: EdgeInsets.only(top: 32),
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
                                        borderRadius: BorderRadius.circular(4)),
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
                                              child: Text('Informal sector'))),
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
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  width: 155,
                                  padding: EdgeInsets.only(
                                      top: 4, bottom: 4, left: 12, right: 12),
                                  child: Text(
                                    'General Information',
                                    style: TextStyle(
                                        color: Color(0xff656687),
                                        fontFamily: 'Avenir'),
                                  ),
                                ),
                              ),
                              size24,
                              FDottedLine(
                                color: Color(0xff439BB4),
                                height: 27,
                                width: 154,
                                strokeWidth: 2.0,
                                dottedLength: 3.0,
                                space: 3.0,
                                child: Container(
                                  width: 110,
                                  padding: EdgeInsets.only(
                                      top: 4, bottom: 4, left: 12, right: 12),
                                  child: Text(
                                    'Applications',
                                    style: TextStyle(
                                        fontFamily: 'Avenir', fontSize: 14),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                  child: Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 1),
                          color: Color(0xffEBEBEC),
                          blurRadius: 4)
                    ]),
                    width: 307,
                    height: 40,
                    child: TextButton(
                        style: TextButton.styleFrom(
                          // shadowColor: Color(0xffEBEBEC),
                          primary: Color(0xff3B3673),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                            side: BorderSide(
                              color: Color(0xffDEDEDF),
                            ),
                          ),
                          backgroundColor: Color(0xffFFFFFF),
                        ),
                        onPressed: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            children: [
                              Text('Demand Notices'),
                              SizedBox(
                                width: 130,
                              ),
                              Expanded(
                                child: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: Color(0xff3B3673),
                                ),
                              )
                            ],
                          ),
                        )),
                  ),
                ),
              ),
              Expanded(
                child: TabBuilder(),
              ),
              Container(
                height: 60,
                width: 395,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xff009E5E),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero)),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>DemandNotice()));
                    },
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 100),
                      child: Text(
                        'Link Demand Notice',
                        style: TextStyle(fontSize: 16, fontFamily: 'Avenir'),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
