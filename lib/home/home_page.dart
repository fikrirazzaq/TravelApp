import 'package:flutter/material.dart';
import 'package:travelapp/detail/detail_page.dart';
import 'package:travelapp/utils/size_config.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffafafa),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: SizeConfig.blockSizeHorizontal * 5.6,
              margin: EdgeInsets.only(
                  top: SizeConfig.blockSizeVertical * 11.3,
                  right: SizeConfig.blockSizeHorizontal * 6),
              child: Image.asset('images/icon_home.png'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 8.7),
            child: Text(
              'Home',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 65,
                color: Colors.black.withOpacity(0.05),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: SizeConfig.blockSizeVertical * 11.3,
                left: SizeConfig.blockSizeHorizontal * 6),
            child: Text(
              'Home',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontSize: 33),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 17.8),
            child: _searchView(),
          ),
          Container(
            margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 27),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                        top: 28,
                        left: SizeConfig.blockSizeHorizontal * 6,
                        right: SizeConfig.blockSizeHorizontal * 6),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            'Your Latest Trip',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.5),
                          ),
                        ),
                        Text(
                          'View All',
                          style: TextStyle(
                              color: Color(0xffafd5ed),
                              fontWeight: FontWeight.w500,
                              fontSize: 12.8),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 12),
                      child: _latestTripList()),
                  Container(
                    margin: EdgeInsets.only(
                        top: 20,
                        left: SizeConfig.blockSizeHorizontal * 6,
                        right: SizeConfig.blockSizeHorizontal * 6),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            'Best Trip',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.5),
                          ),
                        ),
                        Text(
                          'View All',
                          style: TextStyle(
                              color: Color(0xffafd5ed),
                              fontWeight: FontWeight.w500,
                              fontSize: 12.8),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 12), child: _bestTripList()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Card _searchView() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.only(
          top: 8,
          right: SizeConfig.blockSizeHorizontal * 6,
          left: SizeConfig.blockSizeHorizontal * 6),
      child: Container(
        margin: EdgeInsets.only(left: 8),
        child: TextField(
          cursorColor: Color(0xff8ebddb),
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: 'Where do you want to go?',
              hintStyle: TextStyle(fontSize: 12.8),
              border: InputBorder.none),
        ),
      ),
      elevation: 2,
    );
  }

  Widget _latestTripList() {
    return Container(
      height: SizeConfig.blockSizeVertical * 22.3,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              print("clikc ajig");
//              Navigator.of(context).push(MaterialPageRoute(
//                  builder: (context) => RecipeDetailScreen()));
            },
            child: Container(
              width: SizeConfig.blockSizeHorizontal * 28.3,
              margin: EdgeInsets.only(
                  left: SizeConfig.blockSizeHorizontal * 6,
                  right: SizeConfig.blockSizeHorizontal * 0.5),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment(0, 0),
                            image: AssetImage('images/image_borobudur.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        color: Colors.white,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(top: 8),
                                    child: Text(
                                      'Borobudur Trip',
                                      style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(bottom: 8),
                                    child: Text(
                                      '2 Months',
                                      style: TextStyle(
                                          fontSize: 9,
                                          color: Colors.black.withOpacity(0.7)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: SizeConfig.blockSizeHorizontal * 28.3,
            margin:
                EdgeInsets.only(right: SizeConfig.blockSizeHorizontal * 0.5),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          alignment: Alignment(0, 0),
                          image: AssetImage('images/image_bunaken.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      color: Colors.white,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 8),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(top: 8),
                                  child: Text(
                                    'Bunaken Trip',
                                    style: TextStyle(
                                        fontSize: 9,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 8),
                                  child: Text(
                                    '5 Months',
                                    style: TextStyle(
                                        fontSize: 9,
                                        color: Colors.black.withOpacity(0.7)),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: SizeConfig.blockSizeHorizontal * 28.3,
            margin:
                EdgeInsets.only(right: SizeConfig.blockSizeHorizontal * 0.5),
            child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment(0, 0),
                            image: AssetImage('images/image_bali.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        color: Colors.white,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(top: 8),
                                    child: Text(
                                      'Bali Trip',
                                      style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(bottom: 8),
                                    child: Text(
                                      '8 Months',
                                      style: TextStyle(
                                          fontSize: 9,
                                          color: Colors.black.withOpacity(0.7)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )),
          ),
          Container(
            width: SizeConfig.blockSizeHorizontal * 28.3,
            margin:
                EdgeInsets.only(right: SizeConfig.blockSizeHorizontal * 0.5),
            child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment(0, 0),
                            image: AssetImage('images/image_borobudur.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        color: Colors.white,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(top: 8),
                                    child: Text(
                                      'Borobudur Trip',
                                      style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(bottom: 8),
                                    child: Text(
                                      '2 Months',
                                      style: TextStyle(
                                          fontSize: 9,
                                          color: Colors.black.withOpacity(0.7)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )),
          ),
          Container(
            width: SizeConfig.blockSizeHorizontal * 28.3,
            margin:
                EdgeInsets.only(right: SizeConfig.blockSizeHorizontal * 0.5),
            child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment(0, 0),
                            image: AssetImage('images/image_borobudur.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        color: Colors.white,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(top: 8),
                                    child: Text(
                                      'Borobudur Trip',
                                      style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(bottom: 8),
                                    child: Text(
                                      '2 Months',
                                      style: TextStyle(
                                          fontSize: 9,
                                          color: Colors.black.withOpacity(0.7)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )),
          ),
          Container(
            width: SizeConfig.blockSizeHorizontal * 28.3,
            margin:
                EdgeInsets.only(right: SizeConfig.blockSizeHorizontal * 0.5),
            child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment(0, 0),
                            image: AssetImage('images/image_borobudur.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        color: Colors.white,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(top: 8),
                                    child: Text(
                                      'Borobudur Trip',
                                      style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(bottom: 8),
                                    child: Text(
                                      '2 Months',
                                      style: TextStyle(
                                          fontSize: 9,
                                          color: Colors.black.withOpacity(0.7)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )),
          ),
          Container(
            width: SizeConfig.blockSizeHorizontal * 28.3,
            margin: EdgeInsets.only(right: SizeConfig.blockSizeHorizontal * 6),
            child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment(0, 0),
                            image: AssetImage('images/image_borobudur.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        color: Colors.white,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(top: 8),
                                    child: Text(
                                      'Borobudur Trip',
                                      style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(bottom: 8),
                                    child: Text(
                                      '2 Months',
                                      style: TextStyle(
                                          fontSize: 9,
                                          color: Colors.black.withOpacity(0.7)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }

  Widget _bestTripList() {
    return Container(
      height: SizeConfig.blockSizeVertical * 29.17,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              print("clikc ajig");
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => DetailPage()));
            },
            child: Container(
              width: SizeConfig.blockSizeHorizontal * 38.8,
              margin: EdgeInsets.only(
                  left: SizeConfig.blockSizeHorizontal * 6,
                  right: SizeConfig.blockSizeHorizontal * 1),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment(0, 0),
                            image: AssetImage('images/image_labuan.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 12, left: 12),
                        child: Text(
                          'Labuan Bajo',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.8,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: SizeConfig.blockSizeHorizontal * 38.8,
            margin: EdgeInsets.only(right: SizeConfig.blockSizeHorizontal * 1),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          alignment: Alignment(0, 0),
                          image: AssetImage('images/image_sumba.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 12, left: 12),
                      child: Text(
                        'Pulau Sumba',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.8,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: SizeConfig.blockSizeHorizontal * 38.8,
            margin: EdgeInsets.only(right: SizeConfig.blockSizeHorizontal * 1),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          alignment: Alignment(0, 0),
                          image: AssetImage('images/image_labuan.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 12, left: 12),
                      child: Text(
                        'Labuan Bajo',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.8,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: SizeConfig.blockSizeHorizontal * 38.8,
            margin: EdgeInsets.only(right: SizeConfig.blockSizeHorizontal * 1),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          alignment: Alignment(0, 0),
                          image: AssetImage('images/image_labuan.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 12, left: 12),
                      child: Text(
                        'Labuan Bajo',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.8,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: SizeConfig.blockSizeHorizontal * 38.8,
            margin: EdgeInsets.only(right: SizeConfig.blockSizeHorizontal * 6),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          alignment: Alignment(0, 0),
                          image: AssetImage('images/image_labuan.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 12, left: 12),
                      child: Text(
                        'Labuan Bajo',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.8,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
