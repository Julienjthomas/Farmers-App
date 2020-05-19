import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FarmerTile extends StatelessWidget {
  final String name;
  final String address;
  final String email;
  final String phoneNumber;
  final Function onPressed;
  FarmerTile({this.onPressed,this.address, this.email, this.name, this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return Container(

      child: ListTile(
        title: Container(
          margin: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                name,
                style: TextStyle(),
              ),
              Text(address),
              Text(email),
              Text(phoneNumber),
              SizedBox(height: 15.0,),
            ],
          ),
        ),
        trailing: Padding(

          padding: const EdgeInsets.only(top: 20.0,),
          child: CircleAvatar(

            radius: 40.0,
            child: FloatingActionButton(
              backgroundColor: Colors.red,
              onPressed: onPressed,
              elevation: 10.0,
              child: Icon(
                Icons.remove,
                size: 15.0,
              ),
            ),
            backgroundColor: Colors.red,
          ),
        ),
      ),
    );
  }
}
