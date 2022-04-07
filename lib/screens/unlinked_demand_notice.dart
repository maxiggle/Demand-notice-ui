import 'package:flutter/material.dart';
import 'package:rsvg_app/customisation/buttons/back_button.dart';
import 'package:rsvg_app/customisation/text_customisation.dart';
import 'package:intl/intl.dart';

class UnlinkedDemandNotice extends StatefulWidget {
  const UnlinkedDemandNotice({Key key}) : super(key: key);

  @override
  _UnlinkedDemandNoticeState createState() => _UnlinkedDemandNoticeState();
}

class _UnlinkedDemandNoticeState extends State<UnlinkedDemandNotice> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //height of container
        //width of container
        appBar: appBar, //
        body: Column(
          children: [
            Row(children: [
              Padding(
                padding: EdgeInsets.only(top: 34),
                child: BackButtons(buttonColor: Color(0xffE7E9F4)),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 34, left: 10),
                  child: Text(
                    'Go back',
                    style: TextStyle(fontFamily: 'Avenir'),
                  )),
              SizedBox(
                height: 33,
              ),
            ]),
            SizedBox(
              height: 33,
            ),
            Padding(
              padding: EdgeInsets.only(left: 18, right: 18),
              child: Container(
                height: 190,
                width: 400,
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 24, top: 20),
                          child: Text('DN21-000001',
                              style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontWeight: FontWeight.w900,
                                  fontSize: 16)),
                        )),
                    SizedBox(height: 15),
                    Divider(height: 2),
                    sizeHeight24,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        StatusBody(
                          containerHeight: 21,
                          containerWidth: 80,
                          child: Text('Unlinked'),
                          statusColor: Color(0xffFFD7E5),
                          textColor: Color(0xff5D0023),
                        ),
                        SizedBox(
                          width: 129,
                        ),
                        AmountWidget(),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 24.0),
                          child: Text(
                            'BANKS (COMMERCIAL & MERCHANT)',
                            style: fontStyle2,
                          ),
                        )),
                    //  size8,
                    Padding(
                      padding: EdgeInsets.only(left: 24),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Zone 1',
                            style: fontStyle3,
                          )),
                    )
                  ],
                ),
                decoration: BoxDecoration(color: Color(0xffFFFFFF), boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 1),
                      blurRadius: 5,
                      color: Color(0xffEBEBEC)),
                ]),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 18, right: 18),
              child: Container(
                height: 77,
                width: 400,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(top: 16),
                            child: Text('Agent: MCIA-21 -00001'),
                          )),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(top: 6),
                            child: Text('Agent Company Limited.',
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xff9597AC),
                                    fontFamily: 'Avenir,')),
                          ))
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(7),
                        bottomRight: Radius.circular(7)),
                    boxShadow: [
                      BoxShadow(blurRadius: 5, color: Color(0xffE7E9F4))
                    ],
                    color: Color(0xffE7E9F4)),
              ),
            ),
            sizeHeight32,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Container(
                  decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(7),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3,
                          offset: Offset(0, 1),
                          color: Color(0xffE5E5E5),
                        )
                      ]),
                  child: Materialbutton()),
            )
          ],
        ),
      ),
    );
  }
}

class AmountWidget extends StatelessWidget {
  const AmountWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 16),
        child: Text(
          NumberFormat.simpleCurrency(name: 'NGN').format(30000),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: TextStyle(
              // fontFamily: 'Avenir',
              fontWeight: FontWeight.w800,
              color: Color(0xff006E94),
              fontSize: 16,
              fontFamilyFallback: <String>['Roboto', 'Arimo']),
        ),
      ),
    );
  }
}

class StatusBody extends StatelessWidget {
  final Color statusColor;
  final Color textColor;
  final Widget child;
  final double containerWidth;
  final double containerHeight;
  StatusBody(
      {@required this.statusColor,
      @required this.textColor,
      @required this.child,
      @required this.containerHeight,
      @required this.containerWidth});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24),
      child: Container(
        width: containerWidth, //80
        height: containerHeight, //21
        decoration: BoxDecoration(
            color: statusColor,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(11),
                bottomRight: Radius.circular(11),
                topRight: Radius.circular(11))),
        child: Center(child: child),
      ),
    );
  }
}
