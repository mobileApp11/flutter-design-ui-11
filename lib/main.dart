import 'package:design_app25/page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Welcome,",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        Flexible(
                          flex: 3,
                          fit: FlexFit.tight,
                          child: Text(
                            "Nadia",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        CircleAvatar(
                          radius: 30,
                          child: ClipOval(
                            child: Image(
                              height: 60,
                              width: 60,
                              image: AssetImage("images/model.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Let\'s select the best taste for your next \ncoffee break!",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 25.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Taste of the week',
                          style: TextStyle(
                              fontFamily: 'varela',
                              fontSize: 17.0,
                              color: Color(0xFF473D3A)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Text(
                            'See all',
                            style: TextStyle(
                                fontFamily: 'varela',
                                fontSize: 15.0,
                                color: Color(0xFFCEC7C4)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 410,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    _coffeeListCard(
                        'images/starbucks.png',
                        'Caffe Misto',
                        'Coffeeshop',
                        'Our dark, rich espresso balanced with steamed milk and a light layer of foam',
                        '\$4.99',
                        false),
                    _coffeeListCard(
                        'images/starbucks.png',
                        'Caffe Latte',
                        'BrownHouse',
                        'Rich, full-bodied espresso with bittersweet milk sauce and steamed milk',
                        '\$3.99',
                        false)
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      'Taste of the week',
                      style: TextStyle(
                          fontFamily: 'varela',
                          fontSize: 17.0,
                          color: Color(0xFF473D3A)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Text(
                      'See all',
                      style: TextStyle(
                          fontFamily: 'varela',
                          fontSize: 15.0,
                          color: Color(0xFFCEC7C4)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 225,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    _buildimage("images/coffee.jpg"),
                    _buildimage("images/coffee2.jpg"),
                    _buildimage("images/coffee3.jpg"),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }

  _coffeeListCard(String imgPath, String coffeeName, String shopName,
      String description, String price, bool isFavorite) {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Container(
          height: 300,
          width: 225,
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 335,
                  ),
                  Positioned(
                      top: 75,
                      child: Container(
                        padding: EdgeInsets.only(left: 10, right: 20),
                        height: 260,
                        width: 225,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFDAB68C),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 60.0,
                            ),
                            Text(
                              shopName + '\'s',
                              style: TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              coffeeName,
                              style: TextStyle(
                                  fontFamily: 'varela',
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              description,
                              style: TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 14.0,
                                  // fontWeight: FontWeight.w300,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  price,
                                  style: TextStyle(
                                      fontFamily: 'varela',
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF3A4742)),
                                ),
                                Container(
                                    height: 40.0,
                                    width: 40.0,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        color: Colors.white),
                                    child: Center(
                                        child: Icon(Icons.favorite,
                                            color: isFavorite
                                                ? Colors.red
                                                : Colors.grey,
                                            size: 15.0)))
                              ],
                            )
                          ],
                        ),
                      )),
                  Positioned(
                      left: 60,
                      top: 25,
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(imgPath),
                                fit: BoxFit.contain)),
                      )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Page2()));
                },
                child: Container(
                  height: 50,
                  width: 225,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.black87,
                  ),
                  child: Center(
                    child: Text(
                      "Order Now",
                      style: TextStyle(
                          fontFamily: 'nunito',
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }

  _buildimage(String imgPath) {
    return Padding(
      padding: EdgeInsets.only(right: 15),
      child: Container(
        height: 100,
        width: 175,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image:
                DecorationImage(image: AssetImage(imgPath), fit: BoxFit.cover)),
      ),
    );
  }
}
