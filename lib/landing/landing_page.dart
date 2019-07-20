import 'package:flutter/material.dart';
import 'package:travelapp/login/login_page.dart';
import 'package:travelapp/utils/size_config.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffafd5ed),
              Color(0xff8ebddb),
            ],
          ),
        ),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                child: Image.asset(
                  'images/clouds.png',
                  width: SizeConfig.blockSizeHorizontal * 35.6,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: SizeConfig.blockSizeHorizontal * 37.01,
                child: Image.asset(
                  'images/cloud_dark.png',
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: SizeConfig.blockSizeHorizontal * 32.219,
                child: Image.asset(
                  'images/cloud_light.png',
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: SizeConfig.blockSizeHorizontal * 60.85,
                child: Image.asset('images/beach.png'),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    width: SizeConfig.blockSizeHorizontal * 38.63,
                    child: Image.asset('images/logo.png'),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16, bottom: 12),
                    child: Text(
                      'Travel App',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 32.3,
                          letterSpacing: 1.61),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: SizeConfig.blockSizeHorizontal * 10.95),
                    child: Text(
                      'Remember that happiness is a way of travel – not a destination.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 12.8),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: SizeConfig.blockSizeVertical * 7.9),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          width: SizeConfig.blockSizeHorizontal * 36.5,
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()),
                              );
                            },
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.5,
                                  fontWeight: FontWeight.bold),
                            ),
                            shape: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 8),
                          width: SizeConfig.blockSizeHorizontal * 36.5,
                          child: MaterialButton(
                            onPressed: () {},
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.5,
                                  fontWeight: FontWeight.bold),
                            ),
                            shape: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16),
                    child: Text(
                      'Login with social media',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 16.5),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    height: 1,
                    width: SizeConfig.blockSizeHorizontal * 26.5,
                    color: Colors.white,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Material(
                          elevation: 2,
                          shape: CircleBorder(),
                          color: Colors.transparent,
                          child: Ink.image(
                            image: AssetImage(
                              'images/icon_twitter.png',
                            ),
                            fit: BoxFit.cover,
                            width: SizeConfig.blockSizeHorizontal * 10.13,
                            height: SizeConfig.blockSizeHorizontal * 10.13,
                            child: InkWell(
                              onTap: () {},
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 12),
                          child: Material(
                            elevation: 2,
                            shape: CircleBorder(),
                            color: Colors.transparent,
                            child: Ink.image(
                              image: AssetImage(
                                'images/icon_fb.png',
                              ),
                              fit: BoxFit.cover,
                              width: SizeConfig.blockSizeHorizontal * 10.13,
                              height: SizeConfig.blockSizeHorizontal * 10.13,
                              child: InkWell(
                                onTap: () {},
                              ),
                            ),
                          ),
                        ),
                        Material(
                          elevation: 2,
                          shape: CircleBorder(),
                          color: Colors.transparent,
                          child: Ink.image(
                            image: AssetImage(
                              'images/icon_g.png',
                            ),
                            fit: BoxFit.cover,
                            width: SizeConfig.blockSizeHorizontal * 10.13,
                            height: SizeConfig.blockSizeHorizontal * 10.13,
                            child: InkWell(
                              onTap: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
