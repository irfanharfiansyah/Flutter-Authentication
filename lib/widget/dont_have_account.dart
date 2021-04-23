import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DontHaveAcnt extends StatelessWidget {
  const DontHaveAcnt({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Don't have an account?",
      style: GoogleFonts.montserrat(
        textStyle: TextStyle(
          color: Color(0xffA6B0BD),
          fontWeight: FontWeight.w400,
          fontSize: 18,
        ),
      ),
    );
  }
}
