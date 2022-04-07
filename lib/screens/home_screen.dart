import 'package:flutter/material.dart';
import 'package:rsvg_app/customisation/loginFormConstants.dart';
import 'package:rsvg_app/screens/all_business_screen.dart';
import 'package:rsvg_app/screens/demand_notice.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                  padding: EdgeInsets.fromLTRB(15, 02, 10, 0),
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
        body: Stack(children: [
          SingleChildScrollView(
            physics: ScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: EdgeInsets.only(
                left: 18,
                right: 18,
                bottom: 72,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 32),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'DASHBOARD',
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Color(0xff7C7F91),
                                      fontFamily: 'Avenir',
                                      fontWeight: FontWeight.w500),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Text(
                                    'Overview',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Color(0xff262626),
                                        fontFamily: 'Avenir',
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 120),
                              child: SizedBox(
                                height: 40,
                                width: 154,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.add,
                                        size: 15,
                                      ),
                                      Text(
                                        'Business Place',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'Avenir',
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                    primary: Color(0xff006E94),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        HomeCard(),
                        SizedBox(
                          height: 32,
                        ),
                        Container(
                          height: 98,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemCount: cardCarousell.length,
                              separatorBuilder: (BuildContext context, index) =>
                                  SizedBox(
                                    width: 16,
                                  ),
                              itemBuilder: (BuildContext context, int index) =>
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        boxShadow: [
                                          BoxShadow(
                                              color: cardCarousell[index]
                                                  .backgroundColor,
                                              blurRadius: 5,
                                              offset: Offset(0, 1))
                                        ]),
                                    width: 209,
                                    padding: EdgeInsets.only(bottom: 2),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 24),
                                        child: Row(
                                          children: [
                                            cardCarousell[index].icon,
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 24),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 45),
                                                    child: Text(
                                                      cardCarousell[index]
                                                          .title,
                                                      style: TextStyle(
                                                          fontFamily: 'Avenir'),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 4,
                                                  ),
                                                  Text(
                                                      cardCarousell[index].text,
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'Avenir')),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(top: 32),
                      child: Text(
                        'My Businesses',
                        style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 16,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  BusinessesWiget(),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(top: 24),
                      child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Color(0xffE2EDF1)),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>AllBusiness()));
                          },
                          child: Text('All Businesses')),
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
                  style: ElevatedButton.styleFrom(primary: Color(0xff009993)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DemandNotice()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Image(
                            height: 14.99,
                            width: 14.99,
                            image: AssetImage(
                                'assets/ic-link-dn/ic-link-dn@2x.png'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4.68),
                          child: Text(
                            'Link Demand Notice',
                            style:
                                TextStyle(fontSize: 16, fontFamily: 'Avenir'),
                          ),
                        )
                      ],
                    ),
                  )),
            ),
          ),
        ]),
      ),
    );
  }
}
