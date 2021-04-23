import 'package:flutter/material.dart';
import 'package:flutter_application_authentication/screens/first_screen.dart';
import 'package:flutter_application_authentication/service/sign_in_google.dart';
import 'package:flutter_application_authentication/widget/button_SignIn.dart';
import 'package:flutter_application_authentication/widget/button_signUpPage.dart';
import 'package:flutter_application_authentication/widget/dont_have_account.dart';
import 'package:flutter_application_authentication/widget/logo.dart';
import 'package:flutter_application_authentication/widget/logo_text.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          color: Colors.blue.shade100,
          width: double.infinity,
          child: Column(
            children: [
              Logo(),
              LogoText(),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 25,
                          offset: Offset(0, 5),
                          spreadRadius: -25,
                        ),
                      ],
                    ),
                    margin: EdgeInsets.only(bottom: 20),
                    child: TextField(
                      controller: email,
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff000912),
                        ),
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                        hintText: 'Username',
                        hintStyle: TextStyle(
                          color: Color(0xffA6B0BD),
                        ),
                        prefixIcon: Icon(
                          Icons.person_outline,
                          size: 30,
                          color: Color(0xffA6B0BD),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        // prefixIcon: prefixIcon,
                        prefixIconConstraints: BoxConstraints(
                          minWidth: 75,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 25,
                          offset: Offset(0, 5),
                          spreadRadius: -25,
                        ),
                      ],
                    ),
                    margin: EdgeInsets.only(bottom: 20),
                    child: TextField(
                      controller: password,
                      obscureText: true,
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff000912),
                        ),
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          color: Color(0xffA6B0BD),
                        ),
                        prefixIcon: Icon(
                          Icons.vpn_key_outlined,
                          size: 30,
                          color: Color(0xffA6B0BD),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        // prefixIcon: prefixIcon,
                        prefixIconConstraints: BoxConstraints(
                          minWidth: 75,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 20, bottom: 50),
                    decoration: BoxDecoration(
                        color: Color(0xff008FFF),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x60008FFF),
                            blurRadius: 10,
                            offset: Offset(0, 5),
                            spreadRadius: 0,
                          ),
                        ]),
                    child: FlatButton(
                      onPressed: () async {
                        signIn(email.text, password.text).then((result) {
                          if (result != null) {
                            String email = result.email;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FirstScreen(
                                  emailUser: email,
                                ),
                              ),
                            );
                          }
                        });
                      },
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        "SIGN IN",
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                            letterSpacing: 3,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              DontHaveAcnt(),
              SignUp(),
              SignInButton(
                context: context,
              )
            ],
          ),
        ),
      ),
    );
  }
}
