import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_page.dart';
import '../service/sign_in_google.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({this.emailUser});
  String emailUser;
  String nama = 'User';
  String photo =
      "https://cdn-image.hipwee.com/wp-content/uploads/2020/10/hipwee-IMG_20201031_014356-487x640.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color(0xffA5D4DC), Color(0xffF2F4F8)],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: NetworkImage(
                  imageUrl != null ? imageUrl : photo,
                ),
                radius: 60,
                backgroundColor: Colors.transparent,
              ),
              SizedBox(height: 40),
              Text(
                'NAME',
                style: GoogleFonts.montserrat(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff52A7CC)),
              ),
              Text(
                name != null ? name : nama,
                style: GoogleFonts.montserrat(
                    fontSize: 25,
                    color: Color(0xff003458),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'EMAIL',
                style: GoogleFonts.montserrat(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffF52A7CC)),
              ),
              Text(
                emailUser != null ? emailUser : email,
                style: GoogleFonts.montserrat(
                    fontSize: 25,
                    color: Color(0xff003458),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 40),
              RaisedButton(
                onPressed: () {
                  signOutGoogle();
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) {
                    return LoginPage();
                  }), ModalRoute.withName('/'));
                },
                color: Color(0xff52A7CC),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Sign Out',
                    style: GoogleFonts.montserrat(
                        fontSize: 25, color: Colors.white),
                  ),
                ),
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
