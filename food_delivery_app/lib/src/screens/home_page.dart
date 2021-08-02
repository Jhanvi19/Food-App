import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/Widgets/best_food_items.dart';
import 'package:food_delivery_app/src/Widgets/bottom_nav.dart';
import 'package:food_delivery_app/src/Widgets/popular_food_items.dart';
import 'package:food_delivery_app/src/Widgets/search.dart';
import 'package:food_delivery_app/src/Widgets/top_menu_items.dart';
import 'package:food_delivery_app/src/screens/signup_screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.notification_important_outlined,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "What would you like to eat?",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
        titleSpacing: 0.0,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            SearchWidget(),
            TopMenus(),
            PopularFoodTitle(),
            PopularFoodItems(),
            BestFoodTitle(),
            BestFoodItems(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}

String validateNumber(String value) {
  if (value.isEmpty) {
    return 'Please Enter Valid Name';
  }
  return null;
}

String validatePassword(String value) {
  if (value.isEmpty) {
    return 'Please Enter Password';
  }
  return null;
}
