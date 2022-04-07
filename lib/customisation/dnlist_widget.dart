import 'package:flutter/material.dart';
import 'package:rsvg_app/customisation/text_customisation.dart';
import 'package:rsvg_app/screens/select_business_place_to_link.dart';

class DNListWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18),
        child: Container(
          height: 650,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Color(0xffE7E9F4),
                    blurRadius: 5,
                    offset: Offset(0, 1)),
              ]),
          child: Column(
            children: [
              Container(
                height: 55,
                width: 375,
                child: Padding(
                  padding: EdgeInsets.only(top: 16, left: 24, bottom: 16),
                  child: Text('DN#'),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4),
                      topRight: Radius.circular(4)),
                  color: Color(0xffE7EAF4),
                ),
              ),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (BuildContext context, index) => Divider(),
                  itemCount: 20,
                  itemBuilder: (BuildContext context, index) => Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                              fixedSize: Size.fromHeight(59)),
                          onPressed: () {
                            showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                context: context,
                                builder: (context) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(4),
                                        topRight: Radius.circular(4),
                                      ),
                                    ),
                                    height: 257,
                                    child: Center(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Color(0xffFFFFFF),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(4),
                                              topRight: Radius.circular(4),
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                  offset: Offset(0, 1),
                                                  blurRadius: 5,
                                                  color: Color(0xff3F3F4419))
                                            ]),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .99,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              top: 43, left: 18, right: 74),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'DN-000-000-001',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff646A86),
                                                        fontFamily: 'Avenir',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 14),
                                                  ),
                                                  Text(
                                                    'Zone 1',
                                                    style: TextStyle(
                                                        fontFamily: 'Avenir',
                                                        fontSize: 12,
                                                        color:
                                                            Color(0xff646A86)),
                                                  ),
                                                ],
                                              ),
                                              size8,
                                              Row(
                                                children: [
                                                  Text(
                                                    'BANKS (COMMERCIAL & MERCHANT)',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff646A86),
                                                        fontFamily: 'Avenir',
                                                        fontSize: 12),
                                                  ),
                                                ],
                                              ),
                                              size38,
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 40),
                                                child: Container(
                                                  width: 291,
                                                  height: 40,
                                                  decoration:
                                                      BoxDecoration(boxShadow: [
                                                    BoxShadow(
                                                        offset: Offset(0, 1),
                                                        blurRadius: 3,
                                                        color:
                                                            Color((0xff009E5E)))
                                                  ]),
                                                  child: ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            primary: Color(
                                                                0xff009E5E),
                                                            elevation: 0),
                                                    onPressed: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (_) =>
                                                                  SelectBusinessToLink()));
                                                    },
                                                    child: Text(
                                                      'Link',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xffFFFFFF),
                                                          fontFamily: 'Avenir',
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          fontSize: 16),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              size16,
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 40),
                                                child: Container(
                                                  width: 291,
                                                  height: 40,
                                                  child: ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            primary: Color(
                                                                0xffE4EFF3),
                                                            elevation: 0),
                                                    onPressed: () {},
                                                    child: Text(
                                                      'Status',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff186F93),
                                                          fontFamily: 'Avenir',
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          fontSize: 16),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'DN-000-000-001',
                                    style: TextStyle(
                                        color: Color(0xff646A86),
                                        fontFamily: 'Avenir',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14),
                                  ),
                                  size8,
                                  Text(
                                    'BANKS (COMMERCIAL & MERCHANT)',
                                    style: TextStyle(
                                        color: Color(0xff646A86),
                                        fontFamily: 'Avenir',
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                              Text(
                                'Zone 1',
                                style: TextStyle(
                                    fontFamily: 'Avenir',
                                    fontSize: 12,
                                    color: Color(0xff646A86)),
                              ),
                              Image(
                                image: AssetImage(
                                    'assets/ic-caret-right/ic-caret-right.png'),
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
        ),
      ),
    );
  }
}
