import 'package:flutter/material.dart';
import 'package:flutter_application_authentication/screens/sign_up_page.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatelessWidget {
  const SignUp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () => {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SignUpPage(),
          ),
        ),
      },
      child: Text(
        "SIGN UP NOW",
        style: GoogleFonts.montserrat(
          textStyle: TextStyle(
            color: Color(0xFF008FFF),
            fontWeight: FontWeight.w800,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
