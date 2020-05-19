import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:farmersflutter/farmers_data.dart';
import 'package:farmersflutter/farmer_tile.dart';

class FarmerDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<FarmersData>(builder: (context, farmerData, child) {
      return ListView.builder(itemBuilder: (context,index){
        final detail=farmerData.details[index];
        return FarmerTile(
          name: detail.name,
          email: detail.email,
          address: detail.address,
          phoneNumber: detail.phoneNumber,
          onPressed: (){
            farmerData.deleteDetails(detail);
          },
        );
      },itemCount: farmerData.detailsCount,
      );
    },);
  }
}
