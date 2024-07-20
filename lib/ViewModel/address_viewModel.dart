import 'package:flutter/material.dart';

import '../Model/address_model.dart';

class AddressViewModel extends ChangeNotifier{
  List<Address> addresses = [
    Address(address: '٦ أكتوبر ، الحي التاني ، المجاوره التالته ، عماره ٥١٦', buildingNumber: '4', apartmentNumber: '102', floorNumber: '3', type: 'work'),
    Address(address: '٦ أكتوبر ، الحي التاني ، المجاوره التالته ، عماره ٥١٦', buildingNumber: '9', apartmentNumber: '202', floorNumber: '2', type: 'home'),
  ];

  void addAddress(Address address){
    addresses.add(address);
    notifyListeners();
  }
  void selectedTile(int index) {
    addresses[index].isSelected = !addresses[index].isSelected;
    notifyListeners();
  }


  void updateAddress(int index, Address address){
    addresses[index] = address;
    notifyListeners();
  }
  void deleteAddress(int index){
    addresses.removeAt(index);
    notifyListeners();
  }
}