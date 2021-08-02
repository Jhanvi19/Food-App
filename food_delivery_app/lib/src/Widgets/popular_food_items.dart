import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/model/popular_food.dart';
import 'package:food_delivery_app/src/screens/details_page.dart';

class PopularFoodTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Popluar Foods",
            style: TextStyle(
                fontSize: 20,
                color: Color(0xFF3a3a3b),
                fontWeight: FontWeight.w300),
          ),
          Text(
            "See all",
            style: TextStyle(
                fontSize: 16, color: Colors.blue, fontWeight: FontWeight.w100),
          )
        ],
      ),
    );
  }
}

class PopularFoodItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      // width: 250,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FoodDetailsPage()),
          );
        },
        child: ListView.builder(
            itemCount: Data.DataList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Column(
                children: <Widget>[
                  Container(
                    padding:
                        EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
                    decoration: BoxDecoration(boxShadow: []),
                    child: Card(
                        color: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(5.0),
                          ),
                        ),
                        child: Container(
                          width: 180,
                          child: Column(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  alignment: Alignment.topRight,
                                  width: double.infinity,
                                  padding: EdgeInsets.only(right: 5, top: 5),
                                  child: Container(
                                    height: 28,
                                    width: 28,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white70,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0xFFfae3e2),
                                            blurRadius: 25.0,
                                            offset: Offset(0.0, 0.75),
                                          ),
                                        ]),
                                    child: Icon(
                                      Icons.favorite,
                                      color: Color(0xFFfb3132),
                                      size: 16,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Center(
                                  child: Image.asset(
                                    Data.DataList[index].imageUrl,
                                    width: 130,
                                    height: 140,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.bottomLeft,
                                    padding: EdgeInsets.only(left: 5, top: 5),
                                    child: Text(
                                      Data.DataList[index].name,
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    // Text(name,
                                    //   style: TextStyle(
                                    //       color: Color(0xFF6e6e71),
                                    //       fontSize: 15,
                                    //       fontWeight: FontWeight.w500),),
                                  ),
                                  Container(
                                    alignment: Alignment.topRight,
                                    padding: EdgeInsets.only(right: 5),
                                    child: Container(
                                      height: 28,
                                      width: 28,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white70,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0xFFfae3e2),
                                              blurRadius: 25.0,
                                              offset: Offset(0.0, 0.75),
                                            ),
                                          ]),
                                      child: Icon(
                                        Icons.near_me,
                                        color: Color(0xFFfb3132),
                                        size: 16,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Container(
                                          alignment: Alignment.topLeft,
                                          padding:
                                              EdgeInsets.only(left: 5, top: 5),
                                          child: Text(
                                            Data.DataList[index].rating,
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400),
                                          )),
                                      Container(
                                        padding:
                                            EdgeInsets.only(top: 3, left: 5),
                                        child: Row(
                                          children: <Widget>[
                                            Icon(
                                              Icons.star,
                                              size: 10,
                                              color: Color(0xFFfb3132),
                                            ),
                                            Icon(
                                              Icons.star,
                                              size: 10,
                                              color: Color(0xFFfb3132),
                                            ),
                                            Icon(
                                              Icons.star,
                                              size: 10,
                                              color: Color(0xFFfb3132),
                                            ),
                                            Icon(
                                              Icons.star,
                                              size: 10,
                                              color: Color(0xFFfb3132),
                                            ),
                                            Icon(
                                              Icons.star,
                                              size: 10,
                                              color: Color(0xFF9b9b9c),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.topLeft,
                                        padding:
                                            EdgeInsets.only(left: 5, top: 5),
                                        child: Text(
                                          Data.DataList[index].numberOfRating,
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    alignment: Alignment.bottomLeft,
                                    padding: EdgeInsets.only(
                                        left: 5, top: 5, right: 5),
                                    child: Text(
                                      Data.DataList[index].price,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )),
                  ),
                ],
              );

              //   Container(
              //   decoration: BoxDecoration(
              //     color: Colors.grey[200],
              //     borderRadius: const BorderRadius.all(Radius.circular(16.0)),
              //   ),
              //   // width: 50,
              //   child: Row(
              //     children: [
              //       Text(
              //         Data.DataList[index].name,
              //         style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              //       ),
              //     ],
              //   ),
              // );
              //   Container(
              //   margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 15),
              //   child: SizedBox(
              //     height: 150,
              //     child: Stack(
              //       children: [
              //         Container(
              //           child: Row(
              //             children: <Widget>[
              //               SizedBox(
              //                 width: 60,
              //               ),
              //               SizedBox(
              //                 width: 200,
              //                 child: Container(
              //                   decoration: BoxDecoration(
              //                     color: Colors.grey[200],
              //                     // color: Color.fromARGB(255, 248, 250, 251),
              //                     borderRadius: const BorderRadius.all(
              //                         Radius.circular(16.0)),
              //                   ),
              //                   child: Row(
              //                     children: <Widget>[
              //                       const SizedBox(
              //                         width: 50,
              //                       ),
              //                       SizedBox(
              //                         width: 150,
              //                         child: Container(
              //                           child: Padding(
              //                             padding: const EdgeInsets.only(
              //                               right: 16.0,
              //                             ),
              //                             child: Column(
              //                               mainAxisAlignment:
              //                                   MainAxisAlignment.spaceEvenly,
              //                               crossAxisAlignment:
              //                                   CrossAxisAlignment.start,
              //                               children: <Widget>[
              //                                 Text(
              //                                   Data.DataList[index].name,
              //                                   // "User Inetrface\nDesign",
              //                                   style: TextStyle(
              //                                       fontSize: 18,
              //                                       fontWeight: FontWeight.bold),
              //                                 ),
              //                                 Row(
              //                                   children: [
              //                                     Text(
              //                                       Data.DataList[index].name,
              //                                       // '24 lesson',
              //                                       style: TextStyle(
              //                                         fontSize: 10,
              //                                         color: Color.fromARGB(
              //                                             255, 58, 81, 96),
              //                                       ),
              //                                     ),
              //                                     Spacer(),
              //                                     Text(
              //                                       Data.DataList[index].rating,
              //                                       // "4.3",
              //                                       style: TextStyle(
              //                                           fontSize: 18,
              //                                           fontWeight:
              //                                               FontWeight.w400),
              //                                     ),
              //                                     Icon(
              //                                       Icons.star,
              //                                       color: Color.fromARGB(
              //                                           255, 0, 182, 240),
              //                                     ),
              //                                   ],
              //                                 ),
              //                                 Row(
              //                                   children: [
              //                                     Text(Data.DataList[index].name,
              //                                         // '\$ 25',
              //                                         style: TextStyle(
              //                                             fontSize: 16,
              //                                             fontWeight:
              //                                                 FontWeight.bold,
              //                                             color: Color.fromARGB(
              //                                                 255, 0, 182, 240))),
              //                                     Spacer(),
              //                                     Container(
              //                                       decoration: BoxDecoration(
              //                                         color: Color.fromARGB(
              //                                             255, 0, 182, 240),
              //                                         borderRadius:
              //                                             const BorderRadius.all(
              //                                                 Radius.circular(
              //                                                     8.0)),
              //                                       ),
              //                                       child: Padding(
              //                                         padding:
              //                                             const EdgeInsets.all(
              //                                                 4.0),
              //                                         child: Icon(
              //                                           Icons.add,
              //                                           color: Colors.white,
              //                                         ),
              //                                       ),
              //                                     )
              //                                   ],
              //                                 )
              //                               ],
              //                             ),
              //                           ),
              //                         ),
              //                       ),
              //                     ],
              //                   ),
              //                 ),
              //               )
              //             ],
              //           ),
              //         ),
              //         Container(
              //           child: Padding(
              //             padding: const EdgeInsets.only(top: 24, bottom: 24),
              //             child: Row(
              //               children: <Widget>[
              //                 ClipRRect(
              //                   borderRadius:
              //                       const BorderRadius.all(Radius.circular(16.0)),
              //                   child: AspectRatio(
              //                     aspectRatio: 1,
              //                     child: Image.asset(
              //                       Data.DataList[index].imageUrl,
              //                       // 'assets/images/interFace1.png',
              //                     ),
              //                   ),
              //                 )
              //               ],
              //             ),
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // );
            }),
      ),
    );
  }
}
