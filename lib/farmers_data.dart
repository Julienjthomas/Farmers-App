import 'package:flutter/cupertino.dart';
import 'details.dart';
import 'package:flutter/material.dart';
class FarmersData extends ChangeNotifier{
  List<Details> details=[
    Details(name: 'jjt',address:'chalappattu',email: 'julienjthomas@gmail.com',phoneNumber: '9495718991' ),
    Details(name: 'julien',address:'chalappattu',email: 'julienjthomas@gmail.com',phoneNumber: '9495718991' ),
    Details(name: 'vishnu',address:'chalappattu',email: 'julienjthomas@gmail.com',phoneNumber: '9495718991' ),
    Details(name: 'kumar',address:'chalappattu',email: 'julienjthomas@gmail.com',phoneNumber: '9495718991' ),

  ];
  int get detailsCount{
    return details.length;
  }
  void addDetails({String name,String address,String email,String phonenumber}){
    final detail=Details(name: name,phoneNumber: phonenumber,email: email,address: address);
    details.add(detail);
    notifyListeners();
  }
  void deleteDetails(Details detail){
    details.remove(detail);
    notifyListeners();
  }
}