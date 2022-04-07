import 'package:flutter/material.dart';
import 'package:rsvg_app/customisation/buttons/back_button.dart';
import 'package:rsvg_app/customisation/detailed_status.dart';
import 'package:rsvg_app/customisation/text_customisation.dart';
import 'package:rsvg_app/screens/pending_demand_notices.dart';

class PaidDemandNotice extends StatefulWidget {
  @override
  _PaidDemandNoticeState createState() => _PaidDemandNoticeState();
}

class _PaidDemandNoticeState extends State<PaidDemandNotice> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar,
        body: Column(
          children: [
            Row(children: [
              Padding(
                padding: EdgeInsets.only(top: 34),
                child: BackButtons(buttonColor: Color(0xffE7E9F4)),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 34, left: 10),
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
            DetailedSatus(
                statusPaddingleft: 10,
                statusPaddingtop: 10,
                statuscontainerHeight: 23,
                statuscontainerWidth: 50,
                newText: Text('Paid'),
                statusColor: Color(0xffD1F7C4),
                textColor: Color(0xff337138),
                height: 3,
                child: TextButton.icon(
                    onPressed: () {},
                    icon: Image(
                        image:
                            AssetImage('assets/ic-download/ic-download.png')),
                    label: Text(
                      'Download receipt',
                      style: TextStyle(color: Color(0xff18935F)),
                    ))),
            BottomStatusContainer(),
            SizedBox(height: 25)
          ],
        ),
      ),
    );
  }
}
