import 'package:flutter/material.dart';
import 'package:travelapp/utils/size_config.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isExpanded = true;
  double height;
  double rating = 5;

  @override
  void initState() {
    super.initState();
    height = 0;
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    print("${SizeConfig.safeAreaHeight}");
    print("$height");
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                iconTheme: IconThemeData(
                  color: Colors.white,
                ),
                leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                expandedHeight: SizeConfig.safeAreaHeight,
                floating: true,
                pinned: true,
                flexibleSpace: LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  height = constraints.biggest.height;
                  if (height.round().toString().compareTo(
                          SizeConfig.safeAreaHeight.round().toString()) ==
                      1) {
                    isExpanded = true;
                  } else {
                    isExpanded = false;
                  }

                  return Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.5), BlendMode.overlay),
                        image: AssetImage(
                          'images/image_labuan.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        !isExpanded
                            ? Column(
                                children: <Widget>[
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 20, left: 20),
                                        height: 2,
                                        width: 16,
                                        color: Colors.white,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: 16, right: 20),
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              'Labuan Bajo',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 36.3,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: 16,
                                                right: 20,
                                                bottom: SizeConfig
                                                        .blockSizeVertical *
                                                    4.3),
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              'Trip',
                                              style: TextStyle(
                                                  color: Color(0xffafd5ed),
                                                  fontSize: 36.3,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  TabBar(
                                    indicatorSize: TabBarIndicatorSize.tab,
                                    indicatorColor: Colors.white,
                                    labelColor: Colors.white,
                                    unselectedLabelColor: Colors.white,
                                    tabs: [
                                      Tab(text: "Info"),
                                      Tab(text: "Reviews"),
                                      Tab(text: "Offers"),
                                    ],
                                  )
                                ],
                              )
                            : Column(
                                children: <Widget>[
                                  Container(
                                    margin:
                                        EdgeInsets.only(left: 20, right: 20),
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Labuan Bajo',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 36.3,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.only(left: 20, right: 20),
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Trip',
                                      style: TextStyle(
                                          color: Color(0xffafd5ed),
                                          fontSize: 36.3,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 20, right: 20, top: 8, bottom: 8),
                                    child: Row(
                                      children: <Widget>[
                                        SmoothStarRating(
                                          allowHalfRating: false,
                                          onRatingChanged: (v) {
                                            setState(() {
                                              rating = v;
                                            });
                                          },
                                          starCount: 5,
                                          rating: rating,
                                          size: 20.0,
                                          color: Colors.amber,
                                          borderColor: Colors.grey,
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 5),
                                          child: Text(
                                            rating.toString(),
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16.8),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 5),
                                          child: Text(
                                            '(2014)',
                                            style: TextStyle(
                                                color: Colors.white
                                                    .withOpacity(0.8),
                                                fontSize: 12.8),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.only(left: 20, right: 20),
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'On the westernmost tip of the Island of Flores, the town of Labuan Bajo sits peacefully with many wonders waiting for you to explore.....',
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.6),
                                          fontSize: 12.8),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 20,
                                        right: 20,
                                        top: SizeConfig.blockSizeVertical *
                                            2.25),
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      'Rp 3.500.000',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16.8),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.only(left: 20, right: 20),
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      '20 - 29 July 2019',
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.8),
                                          fontSize: 12.8),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            SizeConfig.blockSizeVertical * 4.3),
                                    child: Icon(
                                      Icons.keyboard_arrow_up,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(bottom: 16),
                                    child: Text(
                                      'Swipe up for more',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12.8,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                ],
                              )
                      ],
                    ),
                  );
                }),
                bottom: PreferredSize(
                  child: Container(),
                  preferredSize:
                      Size.fromHeight(SizeConfig.blockSizeVertical * 43),
                ),
              ),
            ];
          },
          body: Container(
            color: Colors.grey[50],
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(
                        left: 20, top: SizeConfig.blockSizeVertical * 2.25),
                    child: Text(
                      'Labuan Bajo | Indonesia',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.8,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 8),
                    child: Row(
                      children: <Widget>[
                        SmoothStarRating(
                          allowHalfRating: false,
                          onRatingChanged: (v) {
                            setState(() {
                              rating = v;
                            });
                          },
                          starCount: 5,
                          rating: rating,
                          size: 20.0,
                          color: Colors.amber,
                          borderColor: Colors.grey,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Text(
                            rating.toString(),
                            style:
                                TextStyle(color: Colors.black, fontSize: 16.8),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Text(
                            '(2014)',
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.8),
                                fontWeight: FontWeight.w300,
                                fontSize: 12.8),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'On the westernmost tip of the Island of Flores, the town of Labuan Bajo sits peacefully with many wonders waiting for you to explore. Labuan Bajo was only a small fishing site that today has flourished to become the gateway to many exotic destinations in East Nusa Tenggara. Labuan Bajo is known as the city of sunset. You can find plenty of vantage point to enjoy every end of the day with a spectacular sky.',
                      style: TextStyle(
                          letterSpacing: 0.64,
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 12.8),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 20, top: 16),
                    child: Text(
                      'Facilities',
                      style: TextStyle(color: Colors.black, fontSize: 16.8),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: 20, right: 20, top: 16),
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 12),
                          alignment: Alignment.center,
                          width: SizeConfig.blockSizeHorizontal * 13.6,
                          height: SizeConfig.blockSizeHorizontal * 13.6,
                          child: Image.asset(
                            'images/icon_hotel.png',
                            height: SizeConfig.blockSizeHorizontal * 8.5,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                  SizeConfig.blockSizeHorizontal * 13.6 / 2),
                              boxShadow: [
                                BoxShadow(color: Colors.grey, blurRadius: 1)
                              ]),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 12),
                          alignment: Alignment.center,
                          width: SizeConfig.blockSizeHorizontal * 13.6,
                          height: SizeConfig.blockSizeHorizontal * 13.6,
                          child: Image.asset(
                            'images/icon_medic.png',
                            height: SizeConfig.blockSizeHorizontal * 8.5,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                  SizeConfig.blockSizeHorizontal * 13.6 / 2),
                              boxShadow: [
                                BoxShadow(color: Colors.grey, blurRadius: 1)
                              ]),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 12),
                          alignment: Alignment.center,
                          width: SizeConfig.blockSizeHorizontal * 13.6,
                          height: SizeConfig.blockSizeHorizontal * 13.6,
                          child: Image.asset(
                            'images/icon_camera.png',
                            height: SizeConfig.blockSizeHorizontal * 8.5,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                  SizeConfig.blockSizeHorizontal * 13.6 / 2),
                              boxShadow: [
                                BoxShadow(color: Colors.grey, blurRadius: 1)
                              ]),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 12),
                          alignment: Alignment.center,
                          width: SizeConfig.blockSizeHorizontal * 13.6,
                          height: SizeConfig.blockSizeHorizontal * 13.6,
                          child: Image.asset(
                            'images/icon_flight.png',
                            height: SizeConfig.blockSizeHorizontal * 8.5,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                  SizeConfig.blockSizeHorizontal * 13.6 / 2),
                              boxShadow: [
                                BoxShadow(color: Colors.grey, blurRadius: 1)
                              ]),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: SizeConfig.blockSizeHorizontal * 13.6,
                          height: SizeConfig.blockSizeHorizontal * 13.6,
                          child: Image.asset(
                            'images/icon_snork.png',
                            height: SizeConfig.blockSizeHorizontal * 8.5,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                  SizeConfig.blockSizeHorizontal * 13.6 / 2),
                              boxShadow: [
                                BoxShadow(color: Colors.grey, blurRadius: 1)
                              ]),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 24, bottom: 20),
                    width: SizeConfig.blockSizeHorizontal * 80.5,
                    height: SizeConfig.blockSizeVertical * 6.64,
                    child: RaisedButton(
                      color: Color(0xffafd5ed),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                child: Text(
                                  'BOOK NOW',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.8,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                'Rp 3.500.500',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.8,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
