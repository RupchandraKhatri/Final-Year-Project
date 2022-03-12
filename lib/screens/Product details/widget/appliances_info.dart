// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:hamro_saman/models/appliances.dart';

class AppliancesInfo extends StatelessWidget {
  final Appliances appliances;
  const AppliancesInfo({Key? key, required this.appliances}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${appliances.title}   ${appliances.subtitle}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    shape: BoxShape.circle),
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 10),
            child: Row(
              children: [
                Icon(
                  Icons.star_border,
                  color: Theme.of(context).primaryColor,
                ),
                Text(
                  "4.5 (2.7k)",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          RichText(
              // ignore: prefer_const_literals_to_create_immutables
              text: TextSpan(children: [
            TextSpan(
              text:
                  "A home appliance, also referred to as a domestic appliance, an electric appliance or a household appliance, is a machine which assists in household functions such as cooking, cleaning and food preservation.",
              style: TextStyle(
                color: Colors.grey.withOpacity(0.7),
                height: 1.5,
              ),
            ),
            TextSpan(
              text: "Read More...",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
              ),
            )
          ]))
        ],
      ),
    );
  }
}
