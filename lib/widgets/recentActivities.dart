import 'package:flutter/material.dart';

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