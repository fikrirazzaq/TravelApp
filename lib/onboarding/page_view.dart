import 'package:flutter/material.dart';
import 'package:travelapp/landing/landing_page.dart';
import 'package:travelapp/onboarding/model_onboarding.dart';
import 'package:travelapp/onboarding/page_view_indicator.dart';

class TravelIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: TravelIntroBody(),
    );
  }
}

class TravelIntroBody extends StatefulWidget {
  TravelIntroBody({Key key}) : super(key: key);

  @override
  _TravelIntroBodyState createState() => _TravelIntroBodyState();
}

class _TravelIntroBodyState extends State<TravelIntroBody> {
  PageController _pageController;
  CrossFadeState _bottomState = CrossFadeState.showFirst;

  void initState() {
    super.initState();
    _pageController = PageController();
    _pageController.addListener(_pageListener);
  }

  @override
  void dispose() {
    _pageController.removeListener(_pageListener);
    _pageController.dispose();
    super.dispose();
  }

  void _pageListener() {
    if (_pageController.hasClients) {
      double page = _pageController.page ?? _pageController.initialPage;
      setState(() {
        if (page >= 1.5) {
          _bottomState = CrossFadeState.showSecond;
        } else {
          _bottomState = CrossFadeState.showFirst;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        PageView.builder(
          controller: _pageController,
          itemCount: pages.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                        top: 0.1 * MediaQuery.of(context).size.height),
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Container(
                            width: 0.8 * MediaQuery.of(context).size.width,
                            child: Image.asset(pages[index].imageBackground)),
                        Container(
                            width: 0.5 * MediaQuery.of(context).size.width,
                            child: Image.asset(pages[index].imageIcon)),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Text(
                    pages[index].title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 29.3),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 0.125 * MediaQuery.of(context).size.width,
                      right: 0.125 * MediaQuery.of(context).size.width,
                      bottom: 0.275 * MediaQuery.of(context).size.height),
                  child: Text(
                    pages[index].subTitle,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        color: Colors.black.withOpacity(0.7),
                        fontSize: 15.5),
                  ),
                )
              ],
            );
          },
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 96.0,
            alignment: Alignment.center,
            child: PageIndicators(
              pageController: _pageController,
            ),
          ),
        ),
      ],
    );
  }
}

class PageIndicators extends StatelessWidget {
  final PageController pageController;

  const PageIndicators({Key key, this.pageController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("page controller ${pageController.page}");
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.center,
          child: PageViewIndicator(
            controller: pageController,
            pageCount: 3,
            color: Colors.blueGrey,
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: InkWell(
            onTap: () {
              pageController.page != null
                  ? pageController.page == 2
                      ? Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => LandingPage(),
                          ),
                        )
                      : pageController.animateToPage(
                          2,
                          curve: Curves.decelerate,
                          duration: Duration(milliseconds: 500),
                        )
                  : pageController.animateToPage(
                      2,
                      curve: Curves.decelerate,
                      duration: Duration(milliseconds: 500),
                    );
            },
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
              child: Text(
                pageController.page != null
                    ? pageController.page > 1.5 ? 'Get Started' : 'Skip'
                    : 'Skip',
                textAlign: TextAlign.end,
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 15),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
