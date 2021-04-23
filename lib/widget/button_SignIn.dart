import 'package:flutter/material.dart';
import 'package:flutter_application_authentication/screens/first_screen.dart';
import 'package:flutter_application_authentication/service/sign_in_google.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    Key key,
    @required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      splashColor: Colors.grey,
      onPressed: () {
        signInWithGoogle().then(
          (result) {
            if (result != null) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return FirstScreen();
                  },
                ),
              );
            }
          },
        );
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      highlightElevation: 0,
      borderSide: BorderSide(color: Color(0xff008FFF)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage("assets/google_logo.png"), height: 30.0),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Sign in with Google',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
