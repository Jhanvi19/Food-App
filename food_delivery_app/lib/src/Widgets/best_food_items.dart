import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/model/best_food.dart';

class BestFoodTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Best Foods",
            style: TextStyle(
                fontSize: 20,
                color: Color(0xFF3a3a3b),
                fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}

class BestFoodItems extends StatefulWidget {
  @override
  _BestFoodItemsState createState() => _BestFoodItemsState();
}

class _BestFoodItemsState extends State<BestFoodItems> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView.builder(
          itemCount: Best.DataList.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {},
              child: Column(
                children: <Widget>[
                  Container(
                    // height: 250,
                    padding:
                        EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
                    decoration: BoxDecoration(boxShadow: []),
                    child: Card(
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image.asset(
                        Best.DataList[index].imageUrl,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 1,
                      margin: EdgeInsets.all(5),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
