import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 44,
          backgroundColor: Color(0xFFED2E69),
          title: Text(
            'ZUBİZAPP'.toUpperCase(),
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 26,
              color: Colors.white,
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              color: Color(0xFFFDFFFF),
              child: DottedLine(
                lineThickness: 4,
                dashColor: Color(0xFFFDFFFF),
                dashGapColor: Color(0xFF1B1C1D),
                dashGapLength: 13,
                dashLength: 18,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF1B1C1D),
              ),
              child: TabBar(
                isScrollable: true,
                labelColor: Colors.white,
                labelStyle: TextStyle(
                    fontSize: 11.0,
                    color: Color(0xFFc9c9c9),
                    fontWeight: FontWeight.w700),
                indicatorColor: Color(0xFFED2E69),
                indicatorSize: TabBarIndicatorSize.label,

                labelPadding: EdgeInsets.symmetric(horizontal: 0),
                unselectedLabelColor: Color(0xFF5E5F60),
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(color: Color(0xFFED2E69), width: 2.2),
                  insets: EdgeInsets.symmetric(vertical: 12.0),
                ),
                // indicator: BoxDecoration(
                //   border: Border(
                //     bottom: BorderSide(
                //         color: Theme.of(context).accentColor, width: 2.6),
                //   ),
                // ),
                tabs: [
                  Container(
                    child: Tab(text: "ANASAYFA"),
                    width: screenWidth / 4,
                  ),
                  Container(
                    child: Tab(text: "KAMPANYALAR"),
                    width: screenWidth / 4,
                  ),
                  Container(
                    child: Tab(text: "ETKİNLİKLER"),
                    width: screenWidth / 4,
                  ),
                  Container(
                    child: Tab(text: "BANA ÖZEL"),
                    width: screenWidth / 4,
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Center(child: Text("Ana Sayfa")),
                  Center(child: Text("Kampanyalar")),
                  Center(child: Text("Etkinlikler")),
                  Center(child: Text("Bana Özel")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
