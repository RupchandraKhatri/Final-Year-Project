// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:hamro_saman/models/appliances.dart';
import 'package:hamro_saman/screens/home/widget/appliances_item.dart';
import 'package:hamro_saman/screens/home/widget/categories_list.dart';

class NewArrival extends StatelessWidget {
  final appliancesList = Appliances.generateAppliances();
  NewArrival({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoriesList(title: 'Appliances'),
          Container(
            height: 260,
            child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 55),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>
                    AppliancesItem(appliances: appliancesList[index]),
                separatorBuilder: (_, index) => SizedBox(
                      width: 10,
                    ),
                itemCount: appliancesList.length),
          )
        ],
      ),
    );
  }
}
