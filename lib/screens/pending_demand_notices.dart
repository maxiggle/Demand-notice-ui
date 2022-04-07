
import 'package:flutter/material.dart';
import 'package:rsvg_app/customisation/buttons/back_button.dart';
import 'package:rsvg_app/customisation/detailed_status.dart';
import 'package:rsvg_app/customisation/text_customisation.dart';

class PendingDemandNotice extends StatefulWidget {
  const PendingDemandNotice({ Key key }) : super(key: key);

  @override
  _PendingDemandNoticeState createState() => _PendingDemandNoticeState();
}

class _PendingDemandNoticeState extends State<PendingDemandNotice> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar,
        body: Column(
            children: [
              Row(
                  children: [
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
                 statusPaddingleft: 18,
                 statusPaddingtop: 18,
                 statuscontainerHeight: 21,
                 statuscontainerWidth: 80,
                 newText: Text('Pending'),
                 statusColor: Color(0xffFFEAB6) ,
                 textColor: Color(0xff606060),
                 height: 2,
                 child: Text('Awaiting payment'),
               ),
            
            BottomStatusContainer(),
            SizedBox(height:25)
           
            ],
          ),
      ),
    );
  }
}

class BottomStatusContainer extends StatelessWidget {
  const BottomStatusContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 18,right: 18),
      child: Container(
        height: 77,
        width:400,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 18),
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
                  style: TextStyle(fontSize: 10,color: Color(0xff9597AC),
                  fontFamily: 'Avenir,')),
                ))
        
            ],
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(7),bottomRight: Radius.circular(7)),
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              color: Color(0xffE7E9F4)
            )
          ],
          color: Color(0xffE7E9F4)),
      ),
    );
  }
}






