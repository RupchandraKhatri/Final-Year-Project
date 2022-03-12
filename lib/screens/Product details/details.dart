import 'package:flutter/material.dart';
import 'package:hamro_saman/models/appliances.dart';
import 'package:hamro_saman/screens/Product%20details/widget/appliances_info.dart';
import 'package:hamro_saman/screens/Product%20details/widget/bid.dart';
import 'package:hamro_saman/screens/Product%20details/widget/detail_app_bar.dart';

class DetailsPage extends StatelessWidget {
  final Appliances appliances;
  const DetailsPage({Key? key, required this.appliances}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailAppBar(
              appliances: appliances,
            ),
            AppliancesInfo(
              appliances: appliances,
            ),
            Bid(
              appliances: appliances,
            ),
          ],
        ),
      ),
    );
  }
}
