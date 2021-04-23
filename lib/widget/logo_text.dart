import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoText extends StatelessWidget {
  const LogoText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 50, top: 30),
      child: Text(
        "Irfan",
        style: GoogleFonts.nunito(
          textStyle: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.w800,
            color: Color(0xff000912),
            letterSpacing: 10,
          ),
        ),
      ),
    );
  }
}
