import 'package:farmersflutter/screens/add_farmer.dart';
import 'package:flutter/material.dart';
import 'package:farmersflutter/screens/farmer_details.dart';
import 'package:provider/provider.dart';
import 'package:farmersflutter/farmers_data.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        elevation: 10.0,
        backgroundColor: Colors.green,
        onPressed: () {
          showModalBottomSheet(
           isScrollControlled: true,
            context: context,
            builder: (context) =>AddFarmer(),
          );
        },
      ),
      backgroundColor: Colors.green,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            //color: Colors.teal,
            padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30.0,
                    child: Icon(
                      Icons.list,
                      color: Colors.green,
                      size: 30.0,
                    )),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Farmers Details',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '${Provider.of<FarmersData>(context).detailsCount} Farmers',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0))),
              child: FarmerDetails(),
            ),
          )
        ],
      )),
    );
  }
}
