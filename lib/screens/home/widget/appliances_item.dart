// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:hamro_saman/models/appliances.dart';
import 'package:hamro_saman/screens/Product%20details/details.dart';

class AppliancesItem extends StatelessWidget {
  final Appliances appliances;
  const AppliancesItem({Key? key, required this.appliances}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DetailsPage(appliances: appliances)));
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.all(8),
                    height: 170,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage(appliances.imageUrl),
                          fit: BoxFit.fitHeight),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    top: 15,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                      ),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 15,
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                appliances.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                ),
              ),
              Text(
                appliances.subtitle,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                ),
              ),
              Text(
                appliances.price,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                    color: Theme.of(context).primaryColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
