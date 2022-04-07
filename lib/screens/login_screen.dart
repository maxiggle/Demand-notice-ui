import 'package:flutter/material.dart';
import 'package:rsvg_app/customisation/loginFormConstants.dart';
import 'package:rsvg_app/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 106),
              Container(
              margin:  const EdgeInsets.symmetric(horizontal: 25),
              padding: EdgeInsets.symmetric(horizontal: 24),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: Color(0xffFFFFFF),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xff3F3F4419),
                          blurRadius: 5.0,
                          offset: Offset(0, 1))
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 66, bottom: 56),
                      child: Image(
                        width: 126.2,
                        height: 36,
                        image: AssetImage('assets/rvsgcom-logo.png'),
                      ),
                    ),
                    Text(
                      'Email or Username',
                      style: TextStyle(
                          color: Color(0xff7A809B),
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: Color(0xffEBEBEC),
                            blurRadius: 4,
                            offset: Offset(0, 1))
                      ]),
                      child: LoginForm(
                        hintText: 'Enter your email',
                        hintStyle: TextStyle(
                            color: Color(0xff646A86).withOpacity(.35),
                            fontFamily: 'Avenir',
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Text(
                      'Password',
                      style: TextStyle(
                          color: Color(0xff7A809B),
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xffEBEBEC),
                              blurRadius: 4,
                              offset: Offset(0, 1))
                        ],
                      ),
                      child: LoginForm(
                        hintText: 'Enter your password',
                        hintStyle: TextStyle(
                            color: Color(0xff646A86).withOpacity(.35),
                            fontFamily: 'Avenir',
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        style: TextButton.styleFrom(),
                        onPressed: () {},
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(
                              color: Color(0xff186F93),
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 56,
                    ),
                    Padding(
                      padding:  EdgeInsets.only(bottom: 72.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff186F93),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>HomeScreen()));
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.w800,
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 193),
            ],
          ),
        ),
      ),
    );
  }
}
