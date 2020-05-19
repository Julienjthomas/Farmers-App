
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:farmersflutter/farmers_data.dart';

class AddFarmer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String name;
    String address;
    String phoneNumber;
    String email;
    return SafeArea(
      child: Container(
        color: Colors.green[900],
        child: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 30.0,),
              Text(
                'Add Farmer',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.green,
                ),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.only(top:30.0,left: 30.0,right: 30.0),
                child: TextField(

                  decoration: InputDecoration(
                    icon: Icon(Icons.person_add,color: Colors.green,),
                    alignLabelWithHint: true,
                    hintText: 'Enter farmers name',
                  ),
                  autofocus: true,
                  textAlign: TextAlign.center,
                  onChanged: (newText) {
                    name=newText;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:30.0,left: 30.0,right: 30.0),
                child: TextField(

                  decoration: InputDecoration(
                    icon: Icon(Icons.home
                      ,color: Colors.green,),
                    hasFloatingPlaceholder: true,
                    alignLabelWithHint: true,
                    hintText: 'Enter farmers Address',
                  ),
                  textAlign: TextAlign.center,
                  onChanged: (newText) {
                    address=newText;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:30.0,left: 30.0,right: 30.0),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.email
                      ,color: Colors.green,),
                    alignLabelWithHint: true,
                    hintText: 'Enter farmers email id',
                  ),
                  textAlign: TextAlign.center,
                  onChanged: (newText) {
                    email=newText;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:30.0,left: 30.0,right: 30.0),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.phone
                      ,color: Colors.green,),
                    alignLabelWithHint: true,
                    hintText: 'Enter farmers phone number',
                  ),
                  textAlign: TextAlign.center,
                  onChanged: (newText) {
                    phoneNumber=newText;
                  },
                ),
              ),
              SizedBox(height: 30.0,),
              FlatButton(
                color: Colors.green,
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: (){
                  if(name!=null&& address!=null&& phoneNumber!=null&& email!=null ){
                    Provider.of<FarmersData>(context).addDetails(name: name,
                        address: address,
                        email: email,
                        phonenumber: phoneNumber);
                    Navigator.pop(context);
                  }
                  else{
                  }
                },
              )

            ],
          ),
        ),
      ),
    );
  }
}
