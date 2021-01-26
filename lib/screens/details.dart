import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.purple,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Icon(
              Icons.favorite,
              color: Colors.purple,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          CircleAvatar(
            radius: 120.0,
            backgroundImage: AssetImage('assets/images/2.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Special O\'pie',
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18.0),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Container(
                    height: 30.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                      color: Colors.purpleAccent[100],
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 3.0),
                        Text(
                          ' (1245 reviews) ',
                          style: TextStyle(
                            color: Colors.purple,
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.whatshot,
                      color: Colors.orange,
                    ),
                    Text(
                      '69 Calories',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Feather.clock,
                      color: Colors.orange,
                    ),
                    Text(
                      '20-30 min',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                    ),
                    Text(
                      '4.9',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.only(
                top: 20.0, left: 10, right: 10, bottom: 20.0),
            child: Text(
              'O\'pie is a widely grown hybrid specie of the genus Fragaria collectively known as the strawberries.The fruit is widely appreciated for its characteristic aroma, bright red color.',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Price',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  '\$8.60',
                  style: TextStyle(
                      color: Colors.purple,
                      fontSize: 16,
                      fontWeight: FontWeight.w900),
                ),
              ),
              Spacer(),
              Icon(Icons.remove_circle_outline, color: Colors.orange),
              Text(
                '  02  ',
                style: TextStyle(fontWeight: FontWeight.w900),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Container(
                  height: 20.0,
                  width: 20.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.orangeAccent,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 15.0,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Container(
            height: 50.0,
            width: 160.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              color: Colors.purple,
            ),
            child: Center(
              child: Text(
                'ADD TO CART',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
