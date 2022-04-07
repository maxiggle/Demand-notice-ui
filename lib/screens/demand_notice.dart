

import 'package:flutter/material.dart';
import 'package:rsvg_app/customisation/bottom_banner.dart';
import 'package:rsvg_app/customisation/buttons/grouped_checkbox.dart';
import 'package:rsvg_app/customisation/dnlist_widget.dart';
import 'package:rsvg_app/customisation/text_customisation.dart';

class DemandNotice extends StatefulWidget {
  const DemandNotice({Key key}) : super(key: key);

  @override
  _DemandNoticeState createState() => _DemandNoticeState();
}


 List<String> _values = [ 

    'Unlinked (20)',
    'Pending (4)',
    'Rceived (30)',
    'Paid (2)',
];

List<String> category =[
'BANKS (COMMERCIAL & MERCHANT)',
'COMMUNITY/PEOPLES BANK',
'FINANCE,INSURRANCE & INVESTMENT COMPANIES',
'OTHER ORDINARY BAKERIES',
'BLOCK MAKING INDUSTRIES',
];



class _DemandNoticeState extends State<DemandNotice> {
  @override
  Widget build(BuildContext context) {
   
    return SafeArea(
      child: Scaffold(
        appBar: appBar,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 32, left: 18),
              child: Row(
                children: [
                  Text(
                    'NOTICES',
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      fontSize: 10,
                      color: Color(0xff7C8191),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Demand Notice',
                    style: TextStyle(
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.w900,
                        fontSize: 18),
                  ),
                  IconButton(
                    icon: Image(
                        image: AssetImage('assets/ic-filter/ic-filter.png')),
                    onPressed: () {
                      showModal(context);
                    },
                  )
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Color(0xffEBEBEC),
                      offset: Offset(0, 1),
                      blurRadius: 4)
                ]),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Color(0xffFFFFFF),
                    filled: true,
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search Demand Notices',
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
            ),
            SizedBox(
              height: 28,
            ),
            DNListWidget(),
            BottomBanner(
              styleColor: Color(0xff186F93),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image:
                        AssetImage('assets/ic-scan-notice/ic-scan-notice.png'),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Scan Notice',
                    style: TextStyle(fontFamily: 'Avenir', fontSize: 16),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<dynamic> showModal(BuildContext context) {
    return showModalBottomSheet(
                        isDismissible: true,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                        backgroundColor: Colors.transparent,
                        isScrollControlled: true,
                        context: context,
                        builder: (_) {
                          return StatefulBuilder(builder:
                              (BuildContext context, StateSetter setState) {
                            return Container(
                              height: 672,
                              child: Padding(
                                padding: EdgeInsets.only(left: 68),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                      height: 672,
                                      width: 289,
                                      child: ModalColumn(),
                                    )
                                  ],
                                ),
                              ),
                            );
                          });
                        });
  }
}

class ModalColumn extends StatelessWidget {
  const ModalColumn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 32,
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: 24),
          child: Text('STATUS'),
        ),
        SizedBox(
          height: 17,
        ),
        StatusCheckbox(),
        Padding(
          padding: const EdgeInsets.only(
              top: 24, left: 24, right: 24),
          child: Divider(
            thickness: 0.8,
          ),
        ),
        sizeHeight24,
        Padding(
          padding:
              const EdgeInsets.symmetric(
                  horizontal: 24),
          child: Text('ZONE'),
        ),
        size16,
        ZoneCheckbox(),
        Padding(
          padding: const EdgeInsets.only(
              top: 24, left: 24, right: 24),
          child: Divider(
            thickness: 0.8,
          ),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(
              left: 24),
          child: Text('CATEGORY'),
        ),
        SizedBox(
          height: 10,
        ),
        CategoryCheckbox(),
      ],
    );
  }
}

class StatusCheckbox extends StatelessWidget {
  const StatusCheckbox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: 15),
      child: GroupedCheckbox(
        spacing: 12,
        runSpacing: -8,
        fixedwidth: false,
        showColor:true,
        values: _values,
        onChanged: (values) {
          values = values;
        },
      ),
    );
  }
}

class ZoneCheckbox extends StatelessWidget {
  const ZoneCheckbox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: 15),
      child: GroupedCheckbox(
        spacing: 12,
        runSpacing: -8,
        fixedwidth: true,
        values: const [
          'Zone 1',
          'Zone 2',
          'Zone 3',
        ],
        onChanged: (values) {
          values = values;
        },
      ),
    );
  }
}

class CategoryCheckbox extends StatelessWidget {
  const CategoryCheckbox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left:15,right: 5),
        child: GroupedCheckbox(
          spacing:12,
          runSpacing:5,
          fixedwidth: true,
          values: category,
          onChanged: (values) {
            values = values;
          },
        ),
      ),
    );
  }
}
