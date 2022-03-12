import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              RichText(
                text: TextSpan(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    TextSpan(
                        text: 'Hey, What are you\nLooking For?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 228, 228, 222),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 0.1,
                          blurRadius: 0.1,
                          offset: Offset(0, 1))
                    ]),
                child: Icon(
                  Icons.menu_open,
                  color: Colors.grey,
                ),
              ),
              // Positioned(
              //     right: 10,
              //     top: 10,
              //     child: Container(
              //       width: 10,
              //       height: 10,
              //       decoration: BoxDecoration(
              //         color: Theme.of(context).primaryColor,
              //         shape: BoxShape.circle,
              //       ),
              //     ))
            ],
          )
        ],
      ),
    );
  }
}
