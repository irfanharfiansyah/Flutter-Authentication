import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 100),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Positioned(
              left: -50,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff00bfdb),
                ),
              )),
          Positioned(
              child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xff008FFF),
            ),
          )),
          Positioned(
              left: 50,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff00227E),
                ),
              ))
        ],
      ),
    );
  }
}
