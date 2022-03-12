// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:hamro_saman/models/appliances.dart';
import 'package:hamro_saman/screens/bid/bid_screen.dart';

class Bid extends StatelessWidget {
  final Appliances appliances;
  const Bid({Key? key, required this.appliances}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Price",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              Text(
                appliances.price,
                style: TextStyle(
                  height: 1.5,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(width: 20),
          Expanded(
            child: Container(
              height: 60,
              child: GestureDetector(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        elevation: 0,
                        primary: Theme.of(context).primaryColor),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => BidScreen()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Bid Now",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        // Icon(Icons.shopping_cart_outlined)
                      ],
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
