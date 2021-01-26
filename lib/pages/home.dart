import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:foodstar/screens/details.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SizedBox(height: 50.0),
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.location_pin,
                            size: 15.0,
                            color: Colors.orangeAccent,
                          ),
                          Text(
                            'Home 01 #07 - 06',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      SizedBox(height: 30.0),
                      Row(
                        children: [
                          Text(
                            'Hey Charly! ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25.0),
                          ),
                          Icon(Icons.whatshot, color: Colors.orange)
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: Container(
                      height: 100,
                      width: 60.0,
                      decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 10.0),
                          CircleAvatar(
                            radius: 20.0,
                            backgroundColor: Colors.white,
                            child: Center(
                              child: Icon(
                                MaterialCommunityIcons.chef_hat,
                                color: Colors.purple,
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Center(
                            child: Icon(
                              Feather.search,
                              color: Colors.white,
                              size: 20.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 80.0,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 40.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(60.0),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 3.0),
                      Icon(
                        MaterialCommunityIcons.backburger,
                        color: Colors.orange,
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        'Burger',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 40.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(60.0),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 3.0),
                      Icon(
                        MaterialCommunityIcons.cupcake,
                        color: Colors.purple,
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        'Cake',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 40.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(60.0),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 3.0),
                      Icon(MaterialCommunityIcons.food_fork_drink,
                          color: Colors.purple),
                      SizedBox(width: 10.0),
                      Text(
                        'Drinks',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
            title: Text(
              'Popular Food',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
            ),
            trailing: Text(
              'See all',
              style: TextStyle(color: Colors.purple, fontSize: 15.0),
            ),
          ),
          Expanded(
            child: Container(
              child: GridView.builder(
                padding: EdgeInsets.all(0.0),
                shrinkWrap: true,
                itemCount: 6,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.8 / 2.3,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => Details(),
                            ),
                          );
                        },
                        child: Container(
                          height: 200,
                          width: 150,
                          child: Card(
                            color: Colors.grey[200],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            elevation: 5,
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Center(
                                      child: CircleAvatar(
                                        radius: 50.0,
                                        backgroundImage: AssetImage(
                                            'assets/images/${Random().nextInt(5)}.jpg'),
                                        backgroundColor: Colors.green,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10.0),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0),
                                    child: Text(
                                      'Tri donout',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17.0,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          '\$40.00',
                                          style: TextStyle(
                                              color: Colors.purple,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Spacer(),
                                        Container(
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
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
