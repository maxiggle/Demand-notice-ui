import 'package:fdottedline/fdottedline.dart';
import 'package:flutter/material.dart';
import 'package:rsvg_app/customisation/text_customisation.dart';

class TabBuilder extends StatefulWidget {
  @override
  TabBuilderState createState() => TabBuilderState();
}

class TabBuilderState extends State<TabBuilder> {
  List<Map> transaction = [
    {
      'title': 'DN0002',
      'address': '14 Abo Road,New Layout',
      'L.G.A': 'Mgbouba Obio-Apkor',
      'phone': '080123456789',
      'onComplete': 'pending'
    },
    {
      'title': 'Paragraph Limited',
      'address': '14 Abo Road,New Layout',
      'L.G.A': 'Mgbouba Obio-Apkor',
      'phone': '080123456789',
      'onComplete': 'paid'
    },
    {
      'title': 'Paragraph Limited',
      'address': '14 Abo Road,New Layout',
      'L.G.A': 'Mgbouba Obio-Apkor',
      'phone': '080123456789',
      'onComplete': 'pending'
    },
    {
      'title': 'DN0002',
      'address': '14 Abo Road,New Layout',
      'L.G.A': 'Mgbouba Obio-Apkor',
      'phone': '080123456789',
      'onComplete': 'pending'
    },
  ];

  List<Map> sortedTransaction = [];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Container(
              width: 280,
              // padding: EdgeInsets.only(right: 40),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      bottom:
                          BorderSide(color: Color(0xffDEDEDF), width: 0.8))),
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(
                    child: Text(
                      'ALL',
                      style: TextStyle(color: Colors.black, fontSize: 13),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'PENDING',
                      style: TextStyle(color: Colors.black, fontSize: 13),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'PAID',
                      style: TextStyle(color: Colors.black, fontSize: 13),
                    ),
                  ),
                ],
              ),
            ),

            // create widgets for each tab bar here
            Expanded(
              child: TabBarView(
                children: [
                  all(),
                  Paid(transaction: transaction),
                  Pending(transaction: transaction),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


  ListView all() {
    return ListView.separated(
                    separatorBuilder: (BuildContext context, index) =>
                        SizedBox(
                          height: 24,
                        ),
                    itemCount: transaction.length,
                    itemBuilder: (BuildContext context, index) {
                      return Container(
                        padding: EdgeInsets.only(top: 32),
                        color: Color(0xffFFFFFF),
                        child: Center(
                          child: FDottedLine(
                            color: Color(0xffDEDEDF),
                            dottedLength: 3,
                            space: 3,
                            child: Container(
                               height: 245,
                              width: 247,
                              child: Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 32),
                                  Padding(
                                    padding: EdgeInsets.only(left: 16.0),
                                    child: Text(
                                      transaction[index]['title'],
                                      style: TextStyle(
                                          fontFamily: 'Avenir',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                  size6,
                                  Padding(
                                    padding: EdgeInsets.only(left: 16.0),
                                    child: Text(
                                      transaction[index]['address'],
                                      style: fontStyle,
                                    ),
                                  ),
                                  size6,
                                  Padding(
                                    padding: EdgeInsets.only(left: 16.0),
                                    child: Text(
                                      transaction[index]['L.G.A'],
                                      style: fontStyle,
                                    ),
                                  ),
                                  size6,
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 16.0),
                                    child: Text(
                                      transaction[index]['phone'],
                                      style: fontStyle,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 16),
                                    child: Container(
                                      height: 25,
                                      width: 64,
                                      decoration: BoxDecoration(
                                          color: transaction[index]
                                                      ['onComplete'] ==
                                                  'pending'
                                              ? Color(0xffFFEAB6)
                                              : transaction[index]
                                                          ['onComplete'] ==
                                                      'pending'
                                                  ? Color(0xffC7F1FE)
                                                  : Color(0xffC0FFC3),
                                          borderRadius: BorderRadius.only(
                                              bottomRight:
                                                  Radius.circular(16),
                                              topRight: Radius.circular(16),
                                              bottomLeft:
                                                  Radius.circular(20))),
                                      child: Center(
                                        child: Text(
                                          transaction[index]['onComplete'],
                                          style: TextStyle(
                                              color: transaction[index]
                                                          ['onComplete'] ==
                                                      'paid'
                                                  ? Color(0xff007A36)
                                                  : Color(0xff205F72)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  Container(
                                    width: 274,
                                    height: 2,
                                    color: Color(0xffF2F3F9),
                                  ),
                                  Row(
                                    children: [
                                      TextButton(
                                          style: TextButton.styleFrom(
                                              primary: Color(0xffFF4768)),
                                          onPressed: () {},
                                          child: Row(
                                            children: [
                                              Icon(Icons.edit, size: 10),
                                              SizedBox(width: 6),
                                              Text(
                                                'Add payment',
                                                style: TextStyle(
                                                  fontFamily: 'Avenir',
                                                  fontSize: 14,
                                                ),
                                              )
                                            ],
                                          )),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    });
  }
}

class Pending extends StatelessWidget {
  const Pending({
    Key key,
    @required this.transaction,
  }) : super(key: key);

  final List<Map> transaction;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (BuildContext context, index) =>
            SizedBox(
              height: 24,
            ),
        itemCount: transaction.length,
        itemBuilder: (BuildContext context, index) {
          return Container(
            padding: EdgeInsets.symmetric(vertical: 24),
            color: Color(0xffFFFFFF),
            child: Center(
              child: FDottedLine(
                color: Color(0xffDEDEDF),
                dottedLength: 3,
                space: 3,
                child: Container(
                  height: 225,
                  width: 247,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 32, horizontal: 16),
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      children: [
                        Text(transaction[index]['title']),
                        size6,
                        Text(transaction[index]['address']),
                        size6,
                        Text(transaction[index]['L.G.A']),
                        size6,
                        Text(transaction[index]['phone']),
                        SizedBox(
                          height: 24,
                        ),
                        Container(
                          height: 25,
                          width: 64,
                          decoration: BoxDecoration(
                              color: transaction[index]
                                          ['onComplete'] ==
                                      'pending'
                                  ? Color(0xffFFEAB6)
                                  : transaction[index]
                                              ['onComplete'] ==
                                          'pending'
                                      ? Color(0xffC7F1FE)
                                      : Color(0xffC0FFC3),
                              borderRadius: BorderRadius.only(
                                  bottomRight:
                                      Radius.circular(16),
                                  topRight: Radius.circular(16),
                                  bottomLeft:
                                      Radius.circular(20))),
                          child: Center(
                            child: Text(
                              transaction[index]['onComplete'],
                              style: TextStyle(
                                  color: transaction[index]
                                              ['onComplete'] ==
                                          'paid'
                                      ? Color(0xff007A36)
                                      : Color(0xff205F72)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        FDottedLine(
                          child: Container(),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}

class Paid extends StatelessWidget {
  const Paid({
    Key key,
    @required this.transaction,
  }) : super(key: key);

  final List<Map> transaction;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (BuildContext context, index) =>
            SizedBox(
              height: 24,
            ),
        itemCount: transaction.length,
        itemBuilder: (BuildContext context, index) {
          return Container(
            padding: EdgeInsets.symmetric(vertical: 24),
            color: Color(0xffFFFFFF),
            child: Center(
              child: FDottedLine(
                color: Color(0xffDEDEDF),
                dottedLength: 3,
                space: 3,
                child: Container(
                  height: 225,
                  width: 247,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 32, horizontal: 16),
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      children: [
                        Text(transaction[index]['title']),
                        size6,
                        Text(transaction[index]['address']),
                        size6,
                        Text(transaction[index]['L.G.A']),
                        size6,
                        Text(transaction[index]['phone']),
                        SizedBox(
                          height: 24,
                        ),
                        Container(
                          height: 25,
                          width: 64,
                          decoration: BoxDecoration(
                              color: transaction[index]
                                          ['onComplete'] ==
                                      'pending'
                                  ? Color(0xffFFEAB6)
                                  : transaction[index]
                                              ['onComplete'] ==
                                          'pending'
                                      ? Color(0xffC7F1FE)
                                      : Color(0xffC0FFC3),
                              borderRadius: BorderRadius.only(
                                  bottomRight:
                                      Radius.circular(16),
                                  topRight: Radius.circular(16),
                                  bottomLeft:
                                      Radius.circular(20))),
                          child: Center(
                            child: Text(
                              transaction[index]['onComplete'],
                              style: TextStyle(
                                  color: transaction[index]
                                              ['onComplete'] ==
                                          'paid'
                                      ? Color(0xff007A36)
                                      : Color(0xff205F72)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        FDottedLine(
                          color: Color(0xffF2F3F9),
                          child: Container(),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
