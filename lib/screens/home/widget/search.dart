// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final tagsList = ["Furnitures", "Electronics", "Others"];
  SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25, left: 25, right: 25),
      child: Column(
        children: [
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Flexible(
                flex: 1,
                child: TextField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                      prefixIcon: Container(
                        padding: EdgeInsets.all(10),
                        child: Image.asset(
                          "assets/icons/search.png",
                          width: 25,
                        ),
                      )),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(15)),
                child: Image.asset(
                  "assets/icons/filter.png",
                  width: 25,
                ),
              ),
            ],
          ),
          Row(
            children: tagsList
                .map((e) => Container(
                      margin: EdgeInsets.only(top: 15, right: 20),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Theme.of(context).primaryColorLight),
                      child: Text(
                        e,
                        style: TextStyle(color: Colors.blue),
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
