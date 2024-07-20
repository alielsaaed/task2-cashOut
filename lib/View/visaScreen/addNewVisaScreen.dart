import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task2_deltana/View/visaScreen/addVisaDialog.dart';
import '../../utils/MyTheme.dart';

class AddNewVisa extends StatelessWidget {
  final userName = TextEditingController();
  final cardNumber = TextEditingController();
  final expiryDate = TextEditingController();
  final cvv = TextEditingController();

  AddNewVisa({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'إضافة بطاقة جديدة',
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'اسم صاحب الكارت',
                  style: TextStyle(
                    fontSize: 16.spMin,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'IBM Plex Sans Arabic',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: userName,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.spMin),
                      borderSide: const BorderSide(color: MyTheme.greyColor),
                    ),
                    hintText: 'ادخل صاحب الكارت هنا',
                    hintStyle: TextStyle(
                      fontSize: 14.spMin,
                      fontFamily: 'IBM Plex Sans Arabic',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'رقم الكارت',
                  style: TextStyle(
                    fontSize: 16.spMin,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'IBM Plex Sans Arabic',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: cardNumber,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.spMin),
                      borderSide: const BorderSide(color: MyTheme.greyColor),
                    ),
                    hintText: 'ادخل رقم الكارت هنا',
                    hintStyle: TextStyle(
                      fontSize: 14.spMin,
                      fontFamily: 'IBM Plex Sans Arabic',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'تاريخ انتهاء الصلاحيه',
                            style: TextStyle(
                              fontSize: 16.spMin,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'IBM Plex Sans Arabic',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            keyboardType: TextInputType.datetime,
                            controller: expiryDate,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.spMin),
                                borderSide: const BorderSide(color: MyTheme.greyColor),
                              ),
                              hintText: 'MM/YY',
                              hintStyle: TextStyle(
                                fontSize: 14.spMin,
                                fontFamily: 'IBM Plex Sans Arabic',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'CVV',
                            style: TextStyle(
                              fontSize: 16.spMin,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'IBM Plex Sans Arabic',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            keyboardType: TextInputType.number,
                            controller: cvv,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.spMin),
                                borderSide: const BorderSide(color: MyTheme.greyColor),
                              ),
                              hintText: 'رمز الامان CVV',
                              hintStyle: TextStyle(
                                fontSize: 14.spMin,
                                fontFamily: 'IBM Plex Sans Arabic',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.spMin),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    AddVisaSuccessDialog(context);
                    Future.delayed(const Duration(seconds: 2), () {
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
