import 'package:flutter/material.dart';

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
