import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:task2_deltana/ViewModel/Address_ViewModel.dart';
import 'package:task2_deltana/utils/MyTheme.dart';

void deleteBottomSheet(BuildContext context, int index) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      final addressViewModel = Provider.of<AddressViewModel>(context, listen: false);
      return ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(32.spMin)),
        child: Container(
          height: 250.h,
          padding: EdgeInsets.all(16.w),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text(
                  'هل تريد حذف عنوانك ؟',
                  style: TextStyle(
                    fontFamily: 'IBM Plex Sans Arabic',
                    fontWeight: FontWeight.w500,
                    fontSize: 20.spMin,
                  ),
                ),
              ),
              SizedBox(height: 15.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFEEEEF1),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.spMin))
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('إلغاء',style: TextStyle(fontSize: 20.spMin,fontWeight: FontWeight.w500,fontFamily: 'IBM Plex Sans Arabic',color: MyTheme.blackColor)),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: MyTheme.redColor,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.spMin))
                    ),
                    onPressed: () {
                      addressViewModel.deleteAddress(index);
                      Navigator.of(context).pop();
                    },
                    child: Text('نعم , أخذف',style: TextStyle(fontSize: 20.spMin,fontWeight: FontWeight.w500,fontFamily: 'IBM Plex Sans Arabic',color: Colors.white),),
                  ),

                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}
