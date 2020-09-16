import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height - 20.0,
                width: MediaQuery.of(context).size.width,
                color: Color(0xFFF3B2B7),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 2,
                child: Container(
                  height: MediaQuery.of(context).size.height / 2 - 20.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40)),
                      color: Colors.white),
                ),
              ),
              Positioned(
                  top: MediaQuery.of(context).size.height / 2 + 25,
                  left: 15,
                  child: Container(
                    height: (MediaQuery.of(context).size.height / 2) - 50,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      children: <Widget>[
                        Text(
                          'Preparation time',
                          style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF726B68)),
                        ),
                        SizedBox(height: 7.0),
                        Text(
                          '5min',
                          style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 14.0,
                              color: Color(0xFFC6C4C4)),
                        ),
                        SizedBox(height: 10.0),
                        Padding(
                          padding: const EdgeInsets.only(right: 35.0),
                          child: Container(
                            height: 0.5,
                            color: Color(0xFFC6C4C4),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Ingredients',
                          style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 19.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF726B68)),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          height: 110,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              buildIngredientItem(
                                  'Water',
                                  Icon(Icons.satellite,
                                      size: 10.0, color: Colors.white),
                                  Color(0xFF6FC5DA)),
                              buildIngredientItem(
                                  'Brewed Espresso',
                                  Icon(Icons.face,
                                      size: 18.0, color: Colors.white),
                                  Color(0xFF615955)),
                              buildIngredientItem(
                                  'Sugar',
                                  Icon(Icons.backspace,
                                      size: 18.0, color: Colors.white),
                                  Color(0xFFF39595)),
                              buildIngredientItem(
                                  'Toffee Nut Syrup',
                                  Icon(Icons.person_outline,
                                      size: 18.0, color: Colors.white),
                                  Color(0xFF8FC28A)),
                              buildIngredientItem(
                                  'Natural Flavors',
                                  Icon(Icons.phone_forwarded,
                                      size: 18.0, color: Colors.white),
                                  Color(0xFF3B8079)),
                              buildIngredientItem(
                                  'Vanilla Syrup',
                                  Icon(Icons.photo_filter,
                                      size: 18.0, color: Colors.white),
                                  Color(0xFFF8B870)),
                              SizedBox(width: 25.0)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 35.0),
                          child: Container(
                            height: 0.5,
                            color: Color(0xFFC6C4C4),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Nutrition Information',
                          style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 19.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF726B68)),
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          children: <Widget>[
                            Text(
                              'Calories',
                              style: TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFD4D3D2),
                              ),
                            ),
                            SizedBox(width: 15.0),
                            Text(
                              '250',
                              style: TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF716966)),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          children: <Widget>[
                            Text(
                              'Proteins',
                              style: TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFD4D3D2)),
                            ),
                            SizedBox(width: 15.0),
                            Text(
                              '10g',
                              style: TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF716966)),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          children: <Widget>[
                            Text(
                              'Caffeine',
                              style: TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFD4D3D2)),
                            ),
                            SizedBox(width: 15.0),
                            Text(
                              '150mg',
                              style: TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF716966)),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Padding(
                          padding: EdgeInsets.only(right: 25),
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                              color: Color(0xFF473D3A),
                            ),
                            child: Center(
                              child: Text(
                                'Make Order',
                                style: TextStyle(
                                    fontFamily: 'nunito',
                                    fontSize: 16.0,
                                    letterSpacing: 0.9,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                      ],
                    ),
                  )),
              Positioned(
                top: MediaQuery.of(context).size.height / 10,
                left: 75.0,
                child: Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/pinkcup.png"),
                          fit: BoxFit.cover)),
                ),
              ),
              Positioned(
                top: 25,
                left: 15,
                child: Container(
                  height: 300,
                  width: 250,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            width: 150.0,
                            child: Text('Caramel Macchiato',
                                style: TextStyle(
                                    fontFamily: 'varela',
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ),
                          SizedBox(width: 15.0),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.favorite,
                                size: 18,
                                color: Colors.red,
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 170.0,
                        child: Text(
                            'Freshly steamed milk with vanilla-flavored syrup is marked with espresso and topped with caramel drizzle for an oh-so-sweet finish.',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 13.0,
                                color: Colors.white)),
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xFF473D3A),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('4.2',
                                      style: TextStyle(
                                          fontFamily: 'nunito',
                                          fontSize: 13.0,
                                          color: Colors.white)),
                                  Text('/5',
                                      style: TextStyle(
                                          fontFamily: 'nunito',
                                          fontSize: 13.0,
                                          color: Color(0xFF7C7573))),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  Container(
                                    height: 35,
                                    width: 80,
                                  ),
                                  Positioned(
                                    left: 40,
                                    child: Container(
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(17),
                                          border: Border.all(
                                              color: Color(0xFFF3B2B7),
                                              width: 1.0,
                                              style: BorderStyle.solid),
                                          image: DecorationImage(
                                              image:
                                                  AssetImage("images/man.jpg"),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                  Positioned(
                                    left: 20.0,
                                    child: Container(
                                      height: 35.0,
                                      width: 35.0,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(17.5),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'images/model.jpg'),
                                              fit: BoxFit.cover),
                                          border: Border.all(
                                              color: Color(0xFFF3B2B7),
                                              style: BorderStyle.solid,
                                              width: 1.0)),
                                    ),
                                  ),
                                  Container(
                                    height: 35.0,
                                    width: 35.0,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(17.5),
                                        image: DecorationImage(
                                            image:
                                                AssetImage('images/model2.jpg'),
                                            fit: BoxFit.cover),
                                        border: Border.all(
                                            color: Color(0xFFF3B2B7),
                                            style: BorderStyle.solid,
                                            width: 1.0)),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                "+ 27 more",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  buildIngredientItem(String name, Icon iconname, Color bgcolor) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: Column(
        children: <Widget>[
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: bgcolor,
            ),
            child: Center(
              child: iconname,
            ),
          ),
          SizedBox(
            height: 4.0,
          ),
          Container(
            width: 60,
            child: Center(
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'nunito',
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF726B68)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
