class Address{
  String address;
  String buildingNumber;
  String apartmentNumber;
  String floorNumber;
  String type;
  bool isSelected;

  Address({required this.address, required this.buildingNumber, required this.apartmentNumber, required this.floorNumber,required this.type, this.isSelected = false});
}