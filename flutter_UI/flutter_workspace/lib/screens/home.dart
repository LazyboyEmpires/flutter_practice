import 'package:flutter/material.dart';
import 'package:flutter_workspace/common/common.dart';
import 'components/makeitem.dart';
import 'exercisegrid.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<List<String>> slide = [
    ['assets/images/ass.png', 'Work Out'],
    ['assets/images/ass2.png', 'Damnn Girl'],
    ['assets/images/ass3.png', 'This is gud']
  ];
  int currentIndex = 0;
  void _next() {
    setState(() {
      if (currentIndex < slide.length - 1) {
        currentIndex++;
      } else {
        currentIndex = currentIndex;
      }
    });
  }

  void _preve() {
    setState(() {
      if (currentIndex > 0) {
        currentIndex--;
      } else {
        currentIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Column(
                children: [
                  GestureDetector(
                    onHorizontalDragEnd: (DragEndDetails details) {
                      if (details.velocity.pixelsPerSecond.dx > 0) {
                        _preve();
                      } else if (details.velocity.pixelsPerSecond.dx < 0) {
                        _next();
                      }
                    },
                    child: Container(
                      height: 272,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(slide[currentIndex][0]),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            colors: [
                              Colors.grey[700].withOpacity(.9),
                              Colors.grey.withOpacity(.0),
                            ],
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: 30,
                              margin: EdgeInsets.only(bottom: 20),
                              child: Row(
                                children: _buildIndicator(),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Porpular Training", style: kFontChildTitle),
                      GestureDetector(
                        child: Text('View All', style: kViewAll),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Exercix();
                          }));
                        },
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeItem(
                            image: 'assets/images/Rectangle.png',
                            title: 'Full Body Work Out'),
                        makeItem(
                            image: 'assets/images/Rectangle.png',
                            title: 'Shoulder, Arms'),
                        makeItem(
                            image: 'assets/images/Rectangle.png',
                            title: 'Chest, Abs'),
                        makeItem(
                            image: 'assets/images/Rectangle.png', title: 'Legs')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Cardio & Tabata", style: kFontChildTitle),
                      GestureDetector(
                        onTap: () {},
                        child: Text('View All', style: kViewAll),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                          },
                          child: makeItem(
                              image: 'assets/images/image.png',
                              title: 'Full Body Work Out'),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: makeItem(
                              image: 'assets/images/image.png',
                              title: 'Shoulder, Arms'),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: makeItem(
                              image: 'assets/images/image.png',
                              title: 'Chest, Abs'),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: makeItem(
                              image: 'assets/images/image.png', title: 'Legs'),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _indicator(bool isActive) {
    return Expanded(
      child: Container(
        height: 4,
        margin: EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
          color: isActive ? Colors.grey[800] : Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicator = [];
    for (int i = 0; i < slide.length; i++) {
      if (currentIndex == i) {
        indicator.add(_indicator(true));
      } else {
        indicator.add(_indicator(false));
      }
    }
    return indicator;
  }
}
