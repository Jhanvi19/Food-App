import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/screens/details_page.dart';
import 'package:food_delivery_app/src/screens/food_order.dart';
import 'package:food_delivery_app/src/screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
