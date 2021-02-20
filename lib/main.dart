import 'package:design/services/MockData.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _totalDots = accountList.length;
  double currentPosition = 0.0;
  void refresh(pos) {
    setState(() {
      currentPosition = pos.ceilToDouble();
    });
  }

  double currentPos() {
    return currentPosition;
  }

  int totalDots() {
    return _totalDots;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              CustomAppBar(),
              Sliders(notifyParent: refresh),
              Dots(getPosition: currentPos, getTotal: totalDots),
              Options(),
              RecentActivities(),
              CustomListView(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: 0, // this will be set when a new tab is tapped
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: new Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Wallet",
              icon: new Icon(Icons.wallet_giftcard),
            ),
            BottomNavigationBarItem(
              label: "Poll",
              icon: Icon(Icons.poll),
            ),
            BottomNavigationBarItem(
              label: "Person",
              icon: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomListView extends StatelessWidget {
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
          child: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          ListTile(
            leading: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFFDCDCDC).withOpacity(0.5),
                    width: 1,
                  ),
                  color: Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(15)),
              child: Icon(
                Icons.tv_sharp,
                color: Colors.red,
              ),
            ),
            title: Text(
              "Netflix Membership",
              textAlign: TextAlign.start,
            ),
            subtitle: Text("25-11-1999"),
          ),
          ListTile(
            leading: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFFDCDCDC).withOpacity(0.5),
                    width: 1,
                  ),
                  color: Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(15)),
              child: Icon(
                Icons.format_paint_sharp,
                color: Colors.purpleAccent,
              ),
            ),
            title: Text(
              "Turkcell Invoice",
              textAlign: TextAlign.start,
            ),
            subtitle: Text("12-09-2020"),
          ),
          ListTile(
            leading: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFFDCDCDC).withOpacity(0.5),
                    width: 1,
                  ),
                  color: Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(15)),
              child: Icon(
                Icons.perm_identity,
                color: Colors.pink,
              ),
            ),
            title: Text(
              "Amazon Price",
              textAlign: TextAlign.start,
            ),
            subtitle: Text("29-12-2023"),
          ),
        ],
      )),
    );
  }
}

class RecentActivities extends StatelessWidget {
  const RecentActivities({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Recent Activities",
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Color(0xFF696969),
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            child: IconButton(
              color: Colors.blue,
              icon: Icon(Icons.arrow_forward),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}

class Options extends StatefulWidget {
  Options({Key key}) : super(key: key);

  @override
  _OptionsState createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFFDCDCDC).withOpacity(0.5),
                      width: 1,
                    ),
                    color: Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.circular(15)),
                child: IconButton(
                  icon: Icon(Icons.money),
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Send\nMoney",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFFDCDCDC).withOpacity(0.5),
                      width: 1,
                    ),
                    color: Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.circular(15)),
                child: IconButton(
                  icon: Icon(Icons.qr_code),
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "QR\nActions",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFFDCDCDC).withOpacity(0.5),
                      width: 1,
                    ),
                    color: Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.circular(15)),
                child: IconButton(
                  icon: Icon(Icons.payment),
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Pay\nBill",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Sliders extends StatefulWidget {
  final Function notifyParent;
  Sliders({Key key, @required this.notifyParent}) : super(key: key);
  @override
  _SlidersState createState() => _SlidersState();
}

class _SlidersState extends State<Sliders> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          CarouselSlider(
            options: CarouselOptions(
              height: 140,
              onPageChanged: (index, reason) {
                widget.notifyParent(index);
              },
              autoPlay: true,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
            ),
            items: cardSliders,
          ),
        ],
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 40.0, left: 40.0, top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.withOpacity(0.3),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10)),
            child: IconButton(
              color: Color(0xFF606060),
              iconSize: 30,
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
          ),
          Text(
            "Home",
            style: TextStyle(
                color: Color(0xFF606060),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          Container(
            child: IconButton(
              color: Color(0xFF606060),
              iconSize: 30,
              icon: Icon(Icons.notifications),
              onPressed: () {},
            ),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.withOpacity(0.3),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10)),
          ),
        ],
      ),
    );
  }
}

class Dots extends StatefulWidget {
  final Function getPosition;
  final Function getTotal;
  Dots({Key key, @required this.getPosition, @required this.getTotal})
      : super(key: key);

  @override
  _DotsState createState() => _DotsState();
}

class _DotsState extends State<Dots> {
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 4,
      position: widget.getPosition(),
      decorator: DotsDecorator(
        color: Colors.black12, // Inactive color
        activeColor: Colors.black54,
      ),
    );
  }
}

final List<Widget> cardSliders = accountList
    .map(
      (item) => SizedBox.expand(
        child: Material(
          borderRadius: BorderRadius.circular(30),
          elevation: 2,
          child: Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: item.color,
              border: Border.all(
                color: Colors.grey.withOpacity(0.3),
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(
                    5.0,
                    5.0,
                  ),
                  blurRadius: 10.0,
                  spreadRadius: 0.0,
                ), //BoxShadow
                BoxShadow(
                  color: item.color,
                  offset: const Offset(0.0, 0.0),
                  blurRadius: 0.0,
                  spreadRadius: 0.0,
                ), //BoxShadow
              ],
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Balance",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.euro,
                        color: Colors.white,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "${item.balance}",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "${item.a1.ceil()}",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "${item.a2.ceil()}",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "${item.a3.ceil()}",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "${item.a4.ceil()}",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    )
    .toList();
