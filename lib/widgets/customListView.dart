import 'package:flutter/material.dart';

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