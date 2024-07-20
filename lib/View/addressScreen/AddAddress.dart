import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task2_deltana/View/addressScreen/AddSuccessDialog.dart';
import '../../utils/MyTheme.dart';

class AddAddress extends StatefulWidget {
  const AddAddress({super.key});

  @override
  _AddAddressState createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  final addressController = TextEditingController();
  final buildingNumberController = TextEditingController();
  final apartmentNumberController = TextEditingController();
  final floorNumberController = TextEditingController();
  String? addressType ;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'اضافه عنوان جديد',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontFamily: 'IBM Plex Sans Arabic',
              fontSize: 20.spMin,
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: MyTheme.white,
              ),
              child: Center(
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: MyTheme.blackColor,
                    size: 25.spMin,
                  ),
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'العنوان',
                    style: TextStyle(
                      fontSize: 16.spMin,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'IBM Plex Sans Arabic',
                    ),
                  ),
                ),
                TextField(
                  controller: addressController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.spMin),
                      borderSide: const BorderSide(color: MyTheme.greyColor),
                    ),
                    hintText: 'ادخل العنوان هنا',
                    hintStyle: TextStyle(
                      fontSize: 14.spMin,
                      fontFamily: 'IBM Plex Sans Arabic',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'رقم المبنى',
                    style: TextStyle(
                      fontSize: 16.spMin,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'IBM Plex Sans Arabic',
                    ),
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: buildingNumberController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.spMin),
                      borderSide: const BorderSide(color: MyTheme.greyColor),
                    ),
                    hintText: 'ادخل رقم المبنى هنا',
                    hintStyle: TextStyle(
                      fontSize: 14.spMin,
                      fontFamily: 'IBM Plex Sans Arabic',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'رقم الشقة',
                    style: TextStyle(
                      fontSize: 16.spMin,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'IBM Plex Sans Arabic',
                    ),
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: apartmentNumberController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.spMin),
                      borderSide: const BorderSide(color: MyTheme.greyColor),
                    ),
                    hintText: 'ادخل رقم الشقة هنا',
                    hintStyle: TextStyle(
                      fontSize: 14.spMin,
                      fontFamily: 'IBM Plex Sans Arabic',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'رقم الدور',
                    style: TextStyle(
                      fontSize: 16.spMin,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'IBM Plex Sans Arabic',
                    ),
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: floorNumberController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.spMin),
                      borderSide: const BorderSide(color: MyTheme.greyColor),
                    ),
                    hintText: 'ادخل رقم الدور هنا',
                    hintStyle: TextStyle(
                      fontSize: 14.spMin,
                      fontFamily: 'IBM Plex Sans Arabic',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10,right: 10),
                  child: Text(
                    'نوع العنوان',
                    style: TextStyle(
                      fontSize: 16.spMin,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'IBM Plex Sans Arabic',
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Radio<String>(
                            value: 'العمل',
                            groupValue: addressType,
                            onChanged: (value) {
                              setState(() {
                                addressType = value!;
                              });
                            },
                            activeColor: MyTheme.yellowColor,
                          ),
                          Text('العمل', style: TextStyle(fontSize: 16.spMin)),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Radio<String>(
                            value: 'المنزل',
                            groupValue: addressType,
                            onChanged: (value) {
                              setState(() {
                                addressType = value!;
                              });
                            },
                            activeColor: MyTheme.yellowColor,
                          ),
                          Text('المنزل', style: TextStyle(fontSize: 16.spMin)),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.spMin),
                ElevatedButton(
                  onPressed: () {
                    AddSuccessDialog(context);
                    Future.delayed(const Duration(milliseconds: 1200), () {
                      Navigator.of(context).pop();
                    });
                    },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.spMin)),
                    minimumSize: const Size(double.infinity, 50),
                    backgroundColor: MyTheme.yellowColor,
                  ),
                  child: Text(
                    'إضافه',
                    style: TextStyle(
                      color: MyTheme.blackColor,
                      fontSize: 20.spMin,
                      fontFamily: 'IBM Plex Sans Arabic',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
