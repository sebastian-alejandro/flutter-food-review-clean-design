import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class FoodList extends StatefulWidget {
  @override
  _FoodListState createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Recommended',
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'SEE ALL',
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF469469),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              getCard('assets/food1.jpg', 'Granola with fruits'),
              getCard('assets/food2.jpg', 'Bread with avocado'),
            ],
          ),
        ),
      ],
    );
  }

  Widget getCard(String imgPath, String foodName) {
    return Padding(
      padding: EdgeInsets.only(left: 25, top: 25, bottom: 10),
      child: Container(
        height: 175,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              blurRadius: 3,
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 3,
            )
          ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 125,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
                    image: DecorationImage(
                      image: AssetImage(imgPath),
                      fit: BoxFit.cover
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white.withOpacity(0.5),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                foodName,
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Row(
                children: <Widget>[
                  Text(
                    'Breakfast',
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold,
                      fontSize: 10.0,
                      color: Colors.grey.withOpacity(0.5)
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Light food',
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold,
                      fontSize: 10.0,
                      color: Colors.grey.withOpacity(0.5)
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left:15.0),
              child: Row(
                children: <Widget>[
                  Icon(Icons.star, color: Colors.yellow, size: 14.0),
                  Icon(Icons.star, color: Colors.yellow, size: 14.0),
                  Icon(Icons.star, color: Colors.yellow, size: 14.0),
                  Icon(Icons.star, color: Colors.yellow, size: 14.0),
                  Icon(Icons.star_border, color: Colors.grey, size: 14.0),
                  SizedBox(width: 10.0),
                  Text('4.5',
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold,
                    fontSize: 10.0,
                  ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}