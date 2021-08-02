import 'package:flutter/material.dart';

class OrWidget extends StatelessWidget {
  const OrWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(top: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: new LinearGradient(
                colors: [
                  Colors.black26,
                  Colors.black,
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 1.0),

              ),
            ),
            width: 100.0,
            height: 1.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            child: Text(
              "Or",
              style: TextStyle(
                  color: Color(0xFF2c2b2b),
                  fontSize: 16.0,
                  fontFamily: "WorkSansMedium"),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: new LinearGradient(
                colors: [
                  Colors.black,
                  Colors.black26,
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 1.0),
              ),
            ),
            width: 100.0,
            height: 1.0,
          ),
        ],
      ),
    );
  }
}