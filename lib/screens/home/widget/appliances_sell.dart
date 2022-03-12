// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:hamro_saman/screens/home/widget/categories_list.dart';

class AppliancesSell extends StatelessWidget {
  const AppliancesSell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {},
        child: Column(
          children: [
            CategoriesList(title: "Appliances for sell"),
            Card(
              margin: EdgeInsets.symmetric(
                horizontal: 25,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            "assets/images/SSofa.png",
                            width: 100,
                          ),
                        ),
                        SizedBox(width: 85),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Sofa set",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                height: 1.5,
                              ),
                            ),
                            Text(
                              "Furnitures",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                height: 1.5,
                              ),
                            ),
                            Text(
                              "Rs.1000",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                height: 1.5,
                                color: Colors.yellow,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.9),
                            shape: BoxShape.circle),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 15,
                        ),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
