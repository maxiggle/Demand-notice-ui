import 'dart:ui';

import 'package:fdottedline/fdottedline.dart';
import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  @override
  TabsState createState() => TabsState();
}

class TabsState extends State<Tabs> {
 
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            
               TabBar(
                tabs: [
                  Tab(
                    child: Text('ALL',style: TextStyle(color: Colors.black),),
                  ),
                  Tab(
                    child: Text('PENDING',style: TextStyle(color: Colors.black),),
                    ),
                  
                    Tab(
                    child: Text('PAID',style: TextStyle(color: Colors.black),),
                  ),
                ],
              ),
            
                     // create widgets for each tab bar here
              Expanded(
                child: TabBarView(
                  children: [
                    // first tab bar view widget
                    Container(
                       color: Color(0xffFFFFFF),
                      child: Center(
                        child: FDottedLine(
                         color: Color(0xffDEDEDF),
                          dottedLength: 3,
                          space: 3,
                          child: Container(
                             height: 225,
                          width:307 ,
                            child: Center(
                              child: Text(
                                'Nothing yet...',style: TextStyle(
                                  color: Color(0xffCBCCD6), fontFamily: 'Avenir',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    // second tab bar viiew widget
                     Container(
                       color: Color(0xffFFFFFF),
                      child: Center(
                        child: FDottedLine(
                         color: Color(0xffDEDEDF),
                          dottedLength: 3,
                          space: 3,
                          child: Container(
                             height: 225,
                          width:307 ,
                            child: Center(
                              child: Text(
                                'Nothing yet...',style: TextStyle(
                                  color: Color(0xffCBCCD6), fontFamily: 'Avenir',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                         Container(
                       color: Color(0xffFFFFFF),
                      child: Center(
                        child: FDottedLine(
                         color: Color(0xffDEDEDF),
                          dottedLength: 3,
                          space: 3,
                          child: Container(
                             height: 225,
                          width:307 ,
                            child: Center(
                              child: Text(
                                'Nothing yet...',style: TextStyle(
                                  color: Color(0xffCBCCD6), fontFamily: 'Avenir',
                                ),
                              ),
                            ),
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

         
          
        );
    
  }
}