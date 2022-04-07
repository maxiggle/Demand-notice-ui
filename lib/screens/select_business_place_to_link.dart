import 'package:flutter/material.dart';
import 'package:rsvg_app/customisation/bottom_banner.dart';
import 'package:rsvg_app/customisation/buttons/back_button.dart';
import 'package:rsvg_app/customisation/text_customisation.dart';

class SelectBusinessToLink extends StatefulWidget {
  const SelectBusinessToLink({Key key}) : super(key: key);

  @override
  _SelectBusinessToLinkState createState() => _SelectBusinessToLinkState();
}

class _SelectBusinessToLinkState extends State<SelectBusinessToLink> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: appBar,
            body: Stack(children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                SizedBox(
                  height: 34,
                ),
                Row(
                  children: [
                  BackButtons(buttonColor: Color(0XffE7EAF4)),
                  SizedBox(width: 20,),
                    Container(
                      width: 290,
                      child: RichText(
                          text: TextSpan(
                              text:
                                  'Select Business Place To Link Demand Notice',
                              style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontWeight: FontWeight.w900,
                                  fontSize: 16,
                                  color: Color(0xff2E2E2E)),
                              children: <InlineSpan>[
                            TextSpan(
                              text: ' DN-000-000-001',
                              style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 16,
                                  decoration: TextDecoration.underline,
                                  color: Color(0xff006E94)),
                            )
                          ])),
                    )
                  ],
                ),
                sizeHeight24,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Container(
                      height: 40,
                      width: 339,
                      child: Text(
                        'Select business place from the list or add new business place',
                        style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 14,
                            color: Color(0xff656687)),
                      )),
                ),
                sizeHeight24,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Color(0xffFFFFFF),
                      filled: true,
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search Business Places',
                      hintStyle: TextStyle(
                          color: Color(0xff646A86).withOpacity(.35),
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.w500),
                      contentPadding:
                          EdgeInsets.only(top: 10, bottom: 10, left: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        borderSide: BorderSide(
                          style: BorderStyle.solid,
                          color: Color(0xffDEDEDF),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffEBEBEC))),
                      //  focusedBorder: OutlineInputBorder(borderSide: )
                    ),
                  ),
                ),
                size28,
                BusinessIdWidget()
              ]),
              Positioned(
                  top: 610,
                  child: BottomBanner(
                    child: Row(
                      children: [
                        Icon(
                          Icons.add,
                          size: 18,
                        ),
                        Text(
                          'Business place',
                          style: TextStyle(fontSize: 16, fontFamily: 'Avenir'),
                        )
                      ],
                    ),
                    styleColor: Color(0xff006E94),
                  ))
            ])));
  }

  // Future<dynamic> pageModal(BuildContext context) {
  //  
  // }
}

class BusinessIdWidget extends StatelessWidget {
  const BusinessIdWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: EdgeInsets.only(left: 18, right: 18),
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
                  padding: EdgeInsets.only(
                      top: 16, left: 24, bottom: 16),
                  child: Text(
                    'BUSINESS ID',
                    style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 12,
                        letterSpacing: 0.96,
                        fontWeight: FontWeight.w500),
                  )),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4),
                    topRight: Radius.circular(4)),
                color: Color(0xffE7EAF4),
              ),
            ),
            BusinessIdListview()
          ],
        ),
      ),
    ));
  }
}

class BusinessIdListview extends StatelessWidget {
  const BusinessIdListview({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (BuildContext context, index) =>
            Divider(),
        itemCount: 20,
        itemBuilder: (BuildContext context, index) =>
            Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              TextButton(
                style: TextButton.styleFrom(
                    fixedSize: Size.fromHeight(59)),
                onPressed: () {
                  
                },
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      children: [
                        Text(
                          'MCI-023-001-000001',
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
    );
  }
}
