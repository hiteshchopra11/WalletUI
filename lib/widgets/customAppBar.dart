import 'package:flutter/material.dart';

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