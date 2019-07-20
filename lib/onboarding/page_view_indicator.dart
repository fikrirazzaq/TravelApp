import 'dart:math';

import 'package:flutter/material.dart';

class PageViewIndicator extends StatefulWidget {
  final PageController controller;
  final int pageCount;
  final Color color;

  static const double _indicatorSize = 8.0;
  static const double _indicatorZoom = 2.0;
  static const double _indicatorSpacing = 21.0;

  PageViewIndicator({this.controller, this.pageCount, this.color});

  @override
  _PageViewIndicatorState createState() => _PageViewIndicatorState();
}

class _PageViewIndicatorState extends State<PageViewIndicator> {
  double _page = 0.0;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_pageListener);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_pageListener);
    super.dispose();
  }

  void _pageListener() {
    if (widget.controller.hasClients) {
      setState(() {
        _page = widget.controller.page ?? widget.controller.initialPage;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: List<Widget>.generate(widget.pageCount, _buildDot),
      ),
    );
  }

  Widget _buildDot(int index) {
    double selectedness = Curves.easeOut.transform(
      max(
        0.0,
        1.0 - (_page - index).abs(),
      ),
    );

    double zoom = 1.0 + (PageViewIndicator._indicatorZoom - 1.0) * selectedness * 0.5;

    print("Page: ${_page} -- Index: $index");

    return Container(
      width: PageViewIndicator._indicatorSpacing,
      child: Material(
        color: _page.round() == index ? Color(0xffafd5ed) : Colors.black.withOpacity(0.2),
        type: MaterialType.circle,
        child: SizedBox(
          width: PageViewIndicator._indicatorSize * zoom,
          height: PageViewIndicator._indicatorSize * zoom,
        ),
      ),
    );
  }
}
