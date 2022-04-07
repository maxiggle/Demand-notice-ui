import 'package:flutter/material.dart';
import 'package:rsvg_app/screens/add_new_business_place.dart';
import 'package:rsvg_app/screens/business_detail_info.dart';

class AllBusiness extends StatefulWidget {
  const AllBusiness({Key key}) : super(key: key);

  @override
  _AllBusinessState createState() => _AllBusinessState();
}

class _AllBusinessState extends State<AllBusiness> {
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
        body: Stack(
          children:[ SingleChildScrollView(
            physics: ScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 32,
                    ),
                    child: Text(
                      'BUSINESSES',
                      style: TextStyle(fontSize: 10, fontFamily: 'Avenir'),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          'All businesses',
                          style: TextStyle(fontSize: 18, fontFamily: 'Avenir'),
                        ),
                      ),
                      Container(
                        width: 145,
                        height: 40,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shadowColor: Color(0xffEBEBEC),
                              primary: Color(0xffDEDEDF)),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Text(
                                'All businesses',
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  color: Color(0xff676888),
                                ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: Color(0xff676888),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Color(0xffFFFFFF),
                      filled: true,
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search business places',
                      hintStyle: TextStyle(
                          color: Color(0xff646A86).withOpacity(.35),
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.w500),
                      contentPadding:
                          EdgeInsets.only(top: 10, bottom: 10, left: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        borderSide: BorderSide(
                          color: Color(0xffDEDEDF),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffEBEBEC))),
                      //  focusedBorder: OutlineInputBorder(borderSide: )
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Container(
                    height: 505,
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
                          height: 48,
                          width: 375,
                          child: Padding(
                            padding:
                                EdgeInsets.only(top: 16, left: 24, bottom: 16),
                            child: Text('NAME'),
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
                            separatorBuilder: (BuildContext context, index) =>
                                Divider(),
                            itemCount: 9,
                            itemBuilder: (BuildContext context, index) => Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24),
                              child: Column(
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (_)=>BusinessDetail()));
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Paragraph Ltd',
                                          style: TextStyle(
                                              color: Color(0xff646A86),
                                              fontFamily: 'Avenir'),
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
                ],
              ),
            ),
          ),
              Positioned(
            top: 615,
            child: Container(
              height: 60,
              width: 395,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Color(0xff006E94)),
                  onPressed: () {
                    showModalBottomSheet(
                isScrollControlled: true,
                // isDismissible: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7)),
                context: context,
                builder: (_) => AddNewBusinessPlace());
          },
                
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: Row(
                      children: [
                        Icon(Icons.add),
                        Text(
                          'Business place',
                          style:
                              TextStyle(fontSize: 16, fontFamily: 'Avenir'),
                        )
                      ],
                    ),
                  )),
            ),
          ),
           ] ),
      ),
    );
  }
}
