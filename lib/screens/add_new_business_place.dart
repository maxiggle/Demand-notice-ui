import 'package:flutter/material.dart';
import 'package:rsvg_app/customisation/buttons/add_button.dart';
import 'package:rsvg_app/customisation/loginFormConstants.dart';
import 'package:rsvg_app/customisation/text_customisation.dart';
class AddNewBusinessPlace extends StatefulWidget {
  const AddNewBusinessPlace({ Key key }) : super(key: key);

  @override
  _AddNewBusinessPlaceState createState() => _AddNewBusinessPlaceState();
}

class _AddNewBusinessPlaceState extends State<AddNewBusinessPlace> {
  @override
  Widget build(BuildContext context) {
    return  DraggableScrollableSheet(
              expand: false,
              initialChildSize: 0.5,
              minChildSize: 0.25,
              maxChildSize: 0.9,
              builder:(_,scrollController){
                return SingleChildScrollView(
                  controller: scrollController,
                  child: Container(
                 
                      color: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10))),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 35,
                              ),
                              Row(
                                children: [
                                  Text('New Business Place',
                                      style: TextStyle(fontSize: 16)),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    ' DN-000-000-001.',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xff186F93),
                                        decoration: TextDecoration.underline,
                                        fontWeight: FontWeight.w900),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 61,
                              ),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text('Business Name')),
                              SizedBox(
                                height: 6,
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Color(0xffDEDEDF)),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 4,
                                            offset: Offset(0, 1),
                                            color: Color(0xff3F3F4419))
                                      ]),
                                  child: LoginForm(
                                    hintText: 'Enter business name',
                                    hintStyle:
                                        TextStyle(color: Color(0xffD0D1DA)),
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 22,
                                width: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(11),
                                  color: Color(0xffC7F1FE),
                                ),
                                child: Center(
                                    child: Text(
                                  'Informal sector',
                                  style: TextStyle(),
                                )),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text('Address')),
                              SizedBox(
                                height: 6,
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Color(0xffDEDEDF)),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 4,
                                            offset: Offset(0, 1),
                                            color: Color(0xff3F3F4419))
                                      ]),
                                  child: LoginForm(
                                    hintText: 'Full Business Address',
                                    hintStyle:
                                        TextStyle(color: Color(0xffD0D1DA)),
                                  )),
                              sizeHeight24,
                              Text('L.G.A'),
                              size6,
                              Text('Obio / Akpor'),
                              SizedBox(
                                height: 24,
                              ),
                              Text('Ward'),
                              size6,
                            Container(
                          
                               decoration: BoxDecoration(
                                 borderRadius:BorderRadius.circular(4) ,
                                 color: Color(0xffFFFFFF),
                                      border:
                                          Border.all(color: Color(0xffDEDEDF)),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 5,
                                            offset: Offset(0, 1),
                                            color: Color(0xff3F3F4419))
                                      ]),
                              height: 40,
                              width: 400,
                              
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton(
                          
                                  hint: Padding(
                                    padding:  EdgeInsets.only(left: 16),
                                    child: Text('— Select —',style: TextStyle(color: Color(0xff374072)),),
                                  ),
                                  isExpanded:true ,
                                      items: [
                                        DropdownMenuItem(
                                          child: Text('Ward 1'),
                                          value: 1,
                                        ),
                                        DropdownMenuItem(
                                          child: Text('Ward 1'),
                                          value: 2,
                                        ),
                                      ],
                                      
                                    ),
                              ),
                            ),
                                  SizedBox(
                                height: 24,
                              ),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text('Email Address')),
                              SizedBox(
                                height: 6,
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Color(0xffDEDEDF)),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 4,
                                            offset: Offset(0, 1),
                                            color: Color(0xff3F3F4419))
                                      ]),
                                  child: LoginForm(
                                    hintText: 'Enter business email address',
                                    hintStyle:
                                        TextStyle(color: Color(0xffD0D1DA)),
                                  )),
                                       SizedBox(
                                height: 24,
                              ),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text('Phone Number')),
                              SizedBox(
                                height: 6,
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Color(0xffDEDEDF)),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 4,
                                            offset: Offset(0, 1),
                                            color: Color(0xff3F3F4419))
                                      ]),
                                  child: LoginForm(
                                    hintText: '080123456789',
                                    hintStyle:
                                        TextStyle(color: Color(0xffD0D1DA)),
                                  )),
                                  sizeHeight32,
                                  Padding(
                                    padding: EdgeInsets.only(left: 73),
                                    child: AddButton(),
                                  ),
                                  SizedBox(height: 4,)
                            ],
                          ),
                        ),
                      )),
                );
            }
            );
    
  }
}