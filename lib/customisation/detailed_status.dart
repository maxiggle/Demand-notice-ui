import 'package:fdottedline/fdottedline.dart';
import 'package:flutter/material.dart';
import 'package:rsvg_app/customisation/status_and_amount.dart';
import 'package:rsvg_app/customisation/text_customisation.dart';
import 'package:rsvg_app/screens/unlinked_demand_notice.dart';

class DetailedSatus extends StatelessWidget {
  final Widget child;
  final double height;
  final Color statusColor;
  final Color textColor;
  final Widget newText;
  final double statuscontainerHeight, statuscontainerWidth;
  final double statusPaddingleft;
  final double   statusPaddingtop;
                            
  DetailedSatus(
      {@required this.child,
      this.height,
      @required this.statusColor,
      @required this.textColor,
      @required this.newText,
      @required this.statuscontainerHeight,
      @required this.statuscontainerWidth,
      @required this.statusPaddingleft,
      @required this.statusPaddingtop
      });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 18, right: 18),
        child: Container(
          height: 525,
          width: 400,
          child: SingleChildScrollView(
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
                Divider(height: 3),
                sizeHeight24,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    StatusBody(
                      containerHeight: statuscontainerHeight,
                      containerWidth: statuscontainerWidth,
                      child: newText,
                      statusColor: statusColor, //Color(0xffFFEAB6),
                      textColor: textColor, //Color(0xff606060),
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
                Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Zone 1',
                        style: fontStyle3,
                      )),
                ),
                sizeHeight24,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: FDottedLine(
                    color: Color(0xffDEDEDF),
                    space: 3,
                    dottedLength: 3,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                      width: 330,
                      height: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          sizeHeight24,
                          Padding(
                            padding: const EdgeInsets.only(left: 16, right: 16),
                            child: ListOfText(),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Divider(
                            height: height,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: statusPaddingleft,//18
                              top: statusPaddingtop, //18
                            ),
                            child: child,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, top: 16),
                      child: Text('Payment Code:'),
                    )),
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, top: 4),
                      child: Text(
                        'PP78274892772',
                        style: fontStyle4,
                      ),
                    ))
              ],
            ),
          ),
          decoration: BoxDecoration(color: Color(0xffFFFFFF), boxShadow: [
            BoxShadow(
                offset: Offset(0, 1), blurRadius: 5, color: Color(0xffEBEBEC)),
          ]),
        ),
      ),
    );
  }
}
